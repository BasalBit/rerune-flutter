import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:rerune/rerune.dart';
import 'package:rerune_flutter/app.dart';
import 'package:rerune_flutter/l10n/gen/app_localizations.rerune.g.dart';
import 'package:rerune_flutter/locale_notifier.dart';

import 'support/memory_cache.dart';

Future<void> startApp(
  WidgetTester tester, {
  MemoryCacheStore? cache,
  Size size = const Size(390, 844),
  double textScale = 1,
}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  tester.platformDispatcher.textScaleFactorTestValue = textScale;
  addTearDown(() {
    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
    tester.platformDispatcher.clearTextScaleFactorTestValue();
    localeNotifier.value = null;
  });
  localeNotifier.value = const Locale('en');
  final store =
      cache ??
      (MemoryCacheStore()
        ..cachedManifest = null
        ..cachedBundles.clear());
  await ReRune.setup(
    otaPublishId: 'publish-id',
    cacheStore: store,
    localizations: reRuneAppLocalizationsConfig,
    updatePolicy: const ReRuneUpdatePolicy(checkOnStart: false),
  );
  await tester.pumpWidget(const ReRuneApp());
  await tester.pumpAndSettle();
}

Future<void> tapKey(WidgetTester tester, String key) async {
  final finder = find.byKey(ValueKey(key));
  if (finder.evaluate().isEmpty) {
    await tester.scrollUntilVisible(
      finder,
      300,
      scrollable: find
          .descendant(
            of: find.byType(CustomScrollView),
            matching: find.byType(Scrollable),
          )
          .first,
    );
  }
  await Scrollable.ensureVisible(tester.element(finder), alignment: .5);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

Future<void> closeSettings(WidgetTester tester) async {
  Navigator.of(
    tester.element(find.byKey(const ValueKey('translation-variant-toggle'))),
  ).pop();
  await tester.pumpAndSettle();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    for (final entry in {
      'Instrument Sans': [
        'InstrumentSans-Regular.ttf',
        'InstrumentSans-Bold.ttf',
      ],
      'Lora': ['Lora-Regular.ttf'],
      'MaterialIcons': ['MaterialIcons-Regular.otf'],
    }.entries) {
      final loader = FontLoader(entry.key);
      for (final asset in entry.value) {
        loader.addFont(
          rootBundle.load(
            asset == 'MaterialIcons-Regular.otf'
                ? 'fonts/$asset'
                : 'assets/fonts/$asset',
          ),
        );
      }
      await loader.load();
    }
  });
  testWidgets(
    'bundled fallback keeps delivery controls available and names every locale',
    (tester) async {
      await startApp(tester);
      expect(find.text('ReRune'), findsOneWidget);
      expect(
        tester.widget<MaterialApp>(find.byType(MaterialApp)).title,
        'ReRune',
      );
      expect(
        find.image(const AssetImage('assets/images/logo.png')),
        findsOneWidget,
      );
      expect(find.text('Make time for a story.'), findsOneWidget);
      await tapKey(tester, 'language-menu');
      for (final name in [
        'English',
        'Deutsch',
        'Español',
        'Français',
        'Italiano',
        'Português',
        'Shqip',
      ]) {
        expect(
          find.widgetWithText(CheckedPopupMenuItem<String>, name),
          findsOneWidget,
        );
      }
      await tester.tap(
        find.widgetWithText(CheckedPopupMenuItem<String>, 'English'),
      );
      await tester.pumpAndSettle();
      await tapKey(tester, 'reading-settings');
      expect(
        tester
            .widget<SwitchListTile>(
              find.byKey(const ValueKey('translation-variant-toggle')),
            )
            .onChanged,
        isNotNull,
      );
      expect(
        tester
            .widget<OutlinedButton>(
              find.byKey(const ValueKey('refresh-texts')).hitTestable(),
            )
            .onPressed,
        isNotNull,
      );
    },
  );

  for (final id in ['atlas', 'lantern', 'garden']) {
    testWidgets('$id can be saved, completed, reopened and restarted', (
      tester,
    ) async {
      await startApp(tester);
      await tester.tap(find.text('Discover'));
      await tester.pumpAndSettle();
      await tapKey(tester, 'open-$id');
      await tapKey(tester, 'bookmark-$id');
      await tapKey(tester, 'advance-chapter');
      expect(find.text('50%'), findsOneWidget);
      await tapKey(tester, 'advance-chapter');
      expect(find.text('Story completed'), findsOneWidget);
      expect(find.text('100%'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.arrow_back_rounded));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Saved'));
      await tester.pumpAndSettle();
      await tapKey(tester, 'open-$id');
      expect(find.text('100%'), findsOneWidget);
      await tapKey(tester, 'advance-chapter');
      expect(find.text('0%'), findsOneWidget);
      await tapKey(tester, 'bookmark-$id');
      await tester.tap(find.byIcon(Icons.arrow_back_rounded));
      await tester.pumpAndSettle();
      expect(find.text('A shelf of your own'), findsOneWidget);
    });
  }

  testWidgets('library and reader expose labeled accessible tap targets', (
    tester,
  ) async {
    final semantics = tester.ensureSemantics();
    await startApp(tester);
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    await tapKey(tester, 'continue-reading');
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    semantics.dispose();
  });
  testWidgets(
    'persists variants, resolves plurals and switches the reading language',
    (tester) async {
      final cache = MemoryCacheStore();
      await startApp(tester, cache: cache);
      expect(find.text('Welcome to ReRune'), findsOneWidget);
      await tapKey(tester, 'reading-settings');
      final preview = find.byKey(const ValueKey('translation-variant-preview'));
      expect(tester.widget<Text>(preview).data, 'Welcome to ReRune');
      expect(find.text('Published on 14.07.2026'), findsOneWidget);
      expect(find.text('one key'), findsOneWidget);
      expect(find.text('many or none keys'), findsOneWidget);
      await tapKey(tester, 'translation-variant-toggle');
      expect(tester.widget<Text>(preview).data, 'VIP welcome');
      expect(find.text('VIP published on 14.07.2026'), findsOneWidget);
      expect(find.text('Variant one'), findsOneWidget);
      expect(cache.settings['variant:publish-id'], 'vip');
      await closeSettings(tester);
      expect(find.text('VIP welcome'), findsOneWidget);

      await tester.pumpWidget(const SizedBox.shrink());
      await startApp(tester, cache: cache);
      expect(find.text('VIP welcome'), findsOneWidget);
      await tapKey(tester, 'reading-settings');
      expect(
        tester
            .widget<SwitchListTile>(
              find.byKey(const ValueKey('translation-variant-toggle')),
            )
            .value,
        isTrue,
      );
      await tapKey(tester, 'translation-variant-toggle');
      expect(tester.widget<Text>(preview).data, 'Welcome to ReRune');
      expect(cache.settings['variant:publish-id'], 'Main');
      await closeSettings(tester);
      await tapKey(tester, 'language-menu');
      await tester.tap(
        find.widgetWithText(CheckedPopupMenuItem<String>, 'Español'),
      );
      await tester.pumpAndSettle();
      expect(find.text('Bienvenidos a ReRune'), findsOneWidget);
      await tapKey(tester, 'continue-reading');
      expect(find.text('El río sin nombre'), findsOneWidget);
      expect(find.text('El atlas silencioso'), findsOneWidget);
      await tapKey(tester, 'language-menu');
      await tester.tap(
        find.widgetWithText(CheckedPopupMenuItem<String>, 'Deutsch'),
      );
      await tester.pumpAndSettle();
      expect(find.text('Der Fluss ohne Namen'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('staging mode toggle switches the runtime mode', (tester) async {
    final cache = MemoryCacheStore();
    await startApp(tester, cache: cache);
    await tapKey(tester, 'reading-settings');
    expect(
      tester
          .widget<SwitchListTile>(
            find.byKey(const ValueKey('staging-mode-toggle')),
          )
          .value,
      isFalse,
    );
    expect(ReRune.isStaging, isFalse);
    var stagingManifestRequests = 0;
    var productionManifestRequests = 0;
    await http.runWithClient(
      () async {
        await tapKey(tester, 'staging-mode-toggle');
        expect(
          tester
              .widget<SwitchListTile>(
                find.byKey(const ValueKey('staging-mode-toggle')),
              )
              .value,
          isTrue,
        );
        expect(ReRune.isStaging, isTrue);
        await tapKey(tester, 'staging-mode-toggle');
        expect(
          tester
              .widget<SwitchListTile>(
                find.byKey(const ValueKey('staging-mode-toggle')),
              )
              .value,
          isFalse,
        );
        expect(ReRune.isStaging, isFalse);
      },
      () => MockClient((request) async {
        if (request.url.path.endsWith('/manifest')) {
          if (request.url.queryParameters['staging'] == 'true') {
            stagingManifestRequests++;
          } else {
            productionManifestRequests++;
          }
          return http.Response(
            jsonEncode(cache.cachedManifest!.manifest.toJson()),
            200,
          );
        }
        if (request.url.queryParameters['staging'] == 'true') {
          return http.Response('[]', 200);
        }
        fail('Production should reuse its matching cached locale.');
      }),
    );
    expect(stagingManifestRequests, greaterThan(0));
    expect(productionManifestRequests, greaterThan(0));
    expect(tester.takeException(), isNull);
  });

  testWidgets('staging mode toggle reports synchronization errors', (
    tester,
  ) async {
    await startApp(tester, cache: MemoryCacheStore());
    await tapKey(tester, 'reading-settings');

    await http.runWithClient(
      () => tapKey(tester, 'staging-mode-toggle'),
      () => MockClient((_) async => http.Response('', 503)),
    );

    expect(
      tester
          .widget<SwitchListTile>(
            find.byKey(const ValueKey('staging-mode-toggle')),
          )
          .value,
      isTrue,
    );
    expect(ReRune.isStaging, isTrue);
    expect(find.text('Staging mode could not be switched.'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'bookmarks, filters, chapter completion and restart share reading state',
    (tester) async {
      await startApp(tester);
      await tester.tap(find.text('Saved'));
      await tester.pumpAndSettle();
      expect(find.text('A shelf of your own'), findsOneWidget);
      await tester.tap(find.text('Explore stories'));
      await tester.pumpAndSettle();
      await tester.tap(find.widgetWithText(ChoiceChip, 'Adventure'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('open-atlas')), findsNothing);
      await tapKey(tester, 'bookmark-lantern');
      await tester.tap(find.text('Saved'));
      await tester.pumpAndSettle();
      await tapKey(tester, 'open-lantern');
      expect(find.text('A light at the station'), findsOneWidget);
      await tapKey(tester, 'advance-chapter');
      expect(find.text('The other side of night'), findsOneWidget);
      expect(find.text('50%'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.arrow_back_rounded));
      await tester.pumpAndSettle();
      await tester.tap(find.text('My library'));
      await tester.pumpAndSettle();
      expect(find.text('The last lantern'), findsOneWidget);
      expect(find.text('50%'), findsOneWidget);
      await tapKey(tester, 'continue-reading');
      expect(find.text('The other side of night'), findsOneWidget);
      await tapKey(tester, 'advance-chapter');
      expect(find.text('Story completed'), findsOneWidget);
      expect(find.text('100%'), findsOneWidget);
      await tapKey(tester, 'advance-chapter');
      expect(find.text('A light at the station'), findsOneWidget);
      expect(find.text('0%'), findsOneWidget);
      await tapKey(tester, 'bookmark-lantern');
      await tester.tap(find.byIcon(Icons.arrow_back_rounded));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Saved'));
      await tester.pumpAndSettle();
      expect(find.text('A shelf of your own'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  for (final size in [
    const Size(320, 568),
    const Size(390, 844),
    const Size(1024, 768),
  ]) {
    testWidgets(
      'scrolls every page without overflow at $size with large German text',
      (tester) async {
        await startApp(tester, size: size, textScale: 1.8);
        localeNotifier.value = const Locale('de');
        await tester.pumpAndSettle();
        await tapKey(tester, 'continue-reading');
        await tapKey(tester, 'advance-chapter');
        expect(find.text('Was die Karte bewahrt'), findsOneWidget);
        await tester.tap(find.byIcon(Icons.arrow_back_rounded));
        await tester.pumpAndSettle();
        await tester.tap(find.text('Entdecken'));
        await tester.pumpAndSettle();
        await tester.drag(find.byType(CustomScrollView), const Offset(0, -600));
        await tester.pumpAndSettle();
        await tester.tap(find.text('Gespeichert'));
        await tester.pumpAndSettle();
        await tester.scrollUntilVisible(
          find.text('Dein eigenes Bücherregal'),
          250,
          scrollable: find
              .descendant(
                of: find.byType(CustomScrollView),
                matching: find.byType(Scrollable),
              )
              .first,
        );
        await tester.pumpAndSettle();
        expect(find.text('Dein eigenes Bücherregal'), findsOneWidget);
        expect(tester.takeException(), isNull);
      },
    );
  }

  for (final entry in {
    'en': 'The river without a name',
    'de': 'Der Fluss ohne Namen',
    'es': 'El río sin nombre',
    'it': 'Il fiume senza nome',
    'pt': 'O rio sem nome',
    'fr': 'La rivière sans nom',
    'sq': 'Lumi pa emër',
  }.entries) {
    final code = entry.key;
    testWidgets('has readable bundled stories for $code', (tester) async {
      await startApp(tester);
      localeNotifier.value = Locale(code);
      await tester.pumpAndSettle();
      await tapKey(tester, 'continue-reading');
      expect(find.byKey(const ValueKey('chapter-title')), findsOneWidget);
      expect(find.text(entry.value), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets(
    'refresh disables repeat taps, reports no change and handles failure',
    (tester) async {
      final cache = MemoryCacheStore();
      await startApp(tester, cache: cache);
      await tapKey(tester, 'reading-settings');
      final pending = Completer<http.Response>();
      var calls = 0;
      final client = MockClient((_) {
        calls++;
        return pending.future;
      });
      await http.runWithClient(() async {
        final refresh = find
            .byKey(const ValueKey('refresh-texts'))
            .hitTestable();
        await tester.ensureVisible(refresh);
        await tester.tap(refresh);
        await tester.pump();
        expect(find.text('Checking for new words…'), findsOneWidget);
        expect(tester.widget<OutlinedButton>(refresh).onPressed, isNull);
        pending.complete(
          http.Response(
            jsonEncode(cache.cachedManifest!.manifest.toJson()),
            200,
          ),
        );
        await tester.pumpAndSettle();
        expect(find.text('Your stories are up to date.'), findsOneWidget);
      }, () => client);
      expect(calls, 1);
      await http.runWithClient(() async {
        await tester.tap(
          find.byKey(const ValueKey('refresh-texts')).hitTestable(),
        );
        await tester.pumpAndSettle();
        expect(
          find.text(
            'Could not refresh. Your stories are still here. Try again.',
          ),
          findsOneWidget,
        );
      }, () => MockClient((_) async => http.Response('', 503)));
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets('refresh applies new story words without losing reading state', (
    tester,
  ) async {
    final cache = MemoryCacheStore();
    await startApp(tester, cache: cache);
    await tapKey(tester, 'bookmark-atlas');
    await tapKey(tester, 'continue-reading');
    final manifest = cache.cachedManifest!.manifest.toJson();
    manifest['version'] = 2;
    final locales = manifest['locales'] as Map<String, Object?>;
    (locales['en'] as Map<String, Object?>)['version'] = 2;
    await http.runWithClient(
      () async {
        await tapKey(tester, 'refresh-texts');
        expect(find.text('Your stories have fresh words.'), findsOneWidget);
      },
      () => MockClient((request) async {
        if (request.url.path.endsWith('/manifest')) {
          return http.Response(jsonEncode(manifest), 200);
        }
        return http.Response(
          jsonEncode([
            {
              'type': 'key',
              'key': 'story_title',
              'values': [
                {'lang': 'en', 'value': 'The atlas of tomorrow'},
              ],
            },
            {
              'type': 'key',
              'key': 'story_body_primary',
              'values': [
                {'lang': 'en', 'value': 'A new river appeared overnight.'},
              ],
            },
          ]),
          200,
        );
      }),
    );
    await tester.drag(find.byType(CustomScrollView), const Offset(0, 1800));
    await tester.pumpAndSettle();
    expect(find.text('The atlas of tomorrow'), findsOneWidget);
    expect(find.text('A new river appeared overnight.'), findsOneWidget);
    expect(find.text('Chapter 1 of 2'), findsOneWidget);
    expect(find.byTooltip('Remove from saved'), findsOneWidget);
  });
  testWidgets('each library tab keeps its own scroll position', (tester) async {
    await startApp(tester);
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -250));
    await tester.pumpAndSettle();
    double offset() => tester
        .widget<CustomScrollView>(find.byType(CustomScrollView))
        .controller!
        .offset;
    final libraryOffset = offset();
    expect(libraryOffset, greaterThan(0));
    await tester.tap(find.text('Discover'));
    await tester.pumpAndSettle();
    expect(offset(), 0);
    await tester.drag(find.byType(CustomScrollView), const Offset(0, -200));
    await tester.pumpAndSettle();
    final discoverOffset = offset();
    await tester.tap(find.text('Saved'));
    await tester.pumpAndSettle();
    expect(offset(), 0);
    await tester.tap(find.text('My library'));
    await tester.pumpAndSettle();
    expect(offset(), libraryOffset);
    await tester.tap(find.text('Discover'));
    await tester.pumpAndSettle();
    expect(offset(), discoverOffset);
  });
}
