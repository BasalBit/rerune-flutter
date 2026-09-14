import 'package:flutter/widgets.dart';
import 'package:rerune/rerune.dart';

import 'app.dart';
import 'bundled_cache_store.dart';
import 'delivery_settings.dart';
import 'l10n/gen/app_localizations.rerune.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const publishId = String.fromEnvironment('RERUNE_OTA_PUBLISH_ID');
  await ReRune.setup(
    otaPublishId: publishId.isEmpty ? 'rerune-bundled' : publishId,
    cacheStore: publishId.isEmpty ? BundledCacheStore() : null,
    localizations: reRuneAppLocalizationsConfig,
    updatePolicy: const ReRuneUpdatePolicy(checkOnStart: publishId != ''),
  );
  runApp(const DeliverySettings(enabled: publishId != '', child: ReRuneApp()));
}
