import 'package:flutter/material.dart';
import 'package:rerune/rerune.dart';
import '../delivery_settings.dart';
import '../l10n/gen/app_localizations.dart';
import '../locale_notifier.dart';
import '../theme/app_theme.dart';
import 'refresh_texts_button.dart';

class LibraryHeader extends StatelessWidget {
  const LibraryHeader({super.key});
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Image.asset(
        'assets/images/logo.png',
        width: 44,
        height: 44,
        excludeFromSemantics: true,
      ),
      const SizedBox(width: 9),
      const Expanded(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            'ReRune',
            maxLines: 1,
            style: TextStyle(
              color: AppTheme.textPrimary,
              fontSize: 26,
              fontWeight: FontWeight.w700,
              letterSpacing: -1,
            ),
          ),
        ),
      ),
      const LanguageMenu(),
      IconButton(
        key: const ValueKey('reading-settings'),
        tooltip: AppLocalizations.of(context)!.reading_settings,
        onPressed: () => showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          useSafeArea: true,
          builder: (_) => const _ReadingSettings(),
        ),
        style: IconButton.styleFrom(backgroundColor: AppTheme.bgSecondary),
        icon: const Icon(Icons.tune_rounded, size: 20),
      ),
    ],
  );
}

class LanguageMenu extends StatelessWidget {
  const LanguageMenu({super.key});
  static const _system = 'system';
  static const _names = {
    'en': 'English',
    'de': 'Deutsch',
    'es': 'Español',
    'it': 'Italiano',
    'pt': 'Português',
    'fr': 'Français',
    'sq': 'Shqip',
  };
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final locales = ReRune.supportedLocales;
    final selected = localeNotifier.value?.toLanguageTag() ?? _system;
    return PopupMenuButton<String>(
      key: const ValueKey('language-menu'),
      tooltip: t.welcome_locale_label,
      initialValue: selected,
      position: PopupMenuPosition.under,
      constraints: const BoxConstraints(minWidth: 220, maxWidth: 300),
      onSelected: (value) => localeNotifier.value = value == _system
          ? null
          : locales.firstWhere((locale) => locale.toLanguageTag() == value),
      itemBuilder: (_) => [
        CheckedPopupMenuItem(
          value: _system,
          checked: selected == _system,
          child: Text(t.welcome_locale_system_default),
        ),
        for (final locale in locales)
          CheckedPopupMenuItem(
            value: locale.toLanguageTag(),
            checked: selected == locale.toLanguageTag(),
            child: Text(
              ReRune.localeName(locale) ??
                  _names[locale.languageCode] ??
                  locale.toLanguageTag(),
            ),
          ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.language_rounded,
              color: AppTheme.textSecondary,
              size: 19,
            ),
            const SizedBox(width: 6),
            Text(
              Localizations.localeOf(context).toLanguageTag().toUpperCase(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 16,
              color: AppTheme.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}

class _ReadingSettings extends StatefulWidget {
  const _ReadingSettings();
  @override
  State<_ReadingSettings> createState() => _ReadingSettingsState();
}

class _ReadingSettingsState extends State<_ReadingSettings> {
  bool _saving = false;
  Future<void> _setVariant(bool enabled) async {
    setState(() => _saving = true);
    try {
      await ReRune.setVariant(
        variant: enabled ? ReRuneVariant.named('vip') : ReRuneVariant.main,
        persist: true,
      );
    } on Object {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.variant_save_error),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) => ReRuneBuilder(
    builder: (context) {
      final t = AppLocalizations.of(context)!;
      return SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                t.reading_settings,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(t.settings_description),
              const SizedBox(height: 20),
              SwitchListTile.adaptive(
                contentPadding: EdgeInsets.zero,
                title: Text(t.translation_variant),
                subtitle: Text(
                  ReRune.variant == ReRuneVariant.main
                      ? 'Main'
                      : ReRune.variant.slug!,
                ),
                key: const ValueKey('translation-variant-toggle'),
                value: ReRune.variant == ReRuneVariant.named('vip'),
                onChanged: _saving || !DeliverySettings.updatesEnabled(context)
                    ? null
                    : _setVariant,
              ),
              const SizedBox(height: 12),
              Semantics(
                liveRegion: true,
                child: Text(
                  t.welcome_title,
                  key: const ValueKey('translation-variant-preview'),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Divider(height: 24),
              Text(
                t.publish_date('14.07.2026'),
                key: const ValueKey('publish-date-overlay'),
              ),
              const SizedBox(height: 8),
              Text(t.plural_sample(1)),
              Text(t.plural_sample(2)),
              const SizedBox(height: 20),
              const RefreshTextsButton(),
              const SizedBox(height: 12),
              Text(
                t.session_note,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
      );
    },
  );
}
