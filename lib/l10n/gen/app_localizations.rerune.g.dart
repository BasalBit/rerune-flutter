// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:rerune/rerune.dart';

import 'app_localizations.dart';

final ReRuneLocalizationsConfig<AppLocalizations> reRuneAppLocalizationsConfig = ReRuneLocalizationsConfig<AppLocalizations>(
  baseDelegate: AppLocalizations.delegate,
  overlayFactory: _reRuneWrapAppLocalizations,
  baseDelegates: AppLocalizations.localizationsDelegates,
  replacingType: AppLocalizations,
  supportedLocales: AppLocalizations.supportedLocales,
);

AppLocalizations _reRuneWrapAppLocalizations(AppLocalizations base, Locale locale) {
  return _ReRuneAppLocalizationsOverlay(base, locale);
}

class _ReRuneAppLocalizationsOverlay extends AppLocalizations {
  _ReRuneAppLocalizationsOverlay(this._base, this._locale) : super(_locale.toString());

  final AppLocalizations _base;
  final Locale _locale;

  @override
  String get welcome_badge {
    final fallback = _base.welcome_badge;
    return ReRune.resolveText(locale: _locale, key: 'welcome_badge', fallback: fallback);
  }

  @override
  String get welcome_title {
    final fallback = _base.welcome_title;
    return ReRune.resolveText(locale: _locale, key: 'welcome_title', fallback: fallback);
  }

  @override
  String get welcome_subtitle {
    final fallback = _base.welcome_subtitle;
    return ReRune.resolveText(locale: _locale, key: 'welcome_subtitle', fallback: fallback);
  }

  @override
  String get welcome_locale_label {
    final fallback = _base.welcome_locale_label;
    return ReRune.resolveText(locale: _locale, key: 'welcome_locale_label', fallback: fallback);
  }

  @override
  String get welcome_locale_value {
    final fallback = _base.welcome_locale_value;
    return ReRune.resolveText(locale: _locale, key: 'welcome_locale_value', fallback: fallback);
  }

  @override
  String get welcome_locale_system_default {
    final fallback = _base.welcome_locale_system_default;
    return ReRune.resolveText(locale: _locale, key: 'welcome_locale_system_default', fallback: fallback);
  }

  @override
  String get welcome_last_synced_label {
    final fallback = _base.welcome_last_synced_label;
    return ReRune.resolveText(locale: _locale, key: 'welcome_last_synced_label', fallback: fallback);
  }

  @override
  String get welcome_open_story_cta {
    final fallback = _base.welcome_open_story_cta;
    return ReRune.resolveText(locale: _locale, key: 'welcome_open_story_cta', fallback: fallback);
  }

  @override
  String get welcome_refresh_state_idle {
    final fallback = _base.welcome_refresh_state_idle;
    return ReRune.resolveText(locale: _locale, key: 'welcome_refresh_state_idle', fallback: fallback);
  }

  @override
  String get welcome_refresh_state_checking {
    final fallback = _base.welcome_refresh_state_checking;
    return ReRune.resolveText(locale: _locale, key: 'welcome_refresh_state_checking', fallback: fallback);
  }

  @override
  String get welcome_refresh_state_downloading {
    final fallback = _base.welcome_refresh_state_downloading;
    return ReRune.resolveText(locale: _locale, key: 'welcome_refresh_state_downloading', fallback: fallback);
  }

  @override
  String get welcome_refresh_state_applying {
    final fallback = _base.welcome_refresh_state_applying;
    return ReRune.resolveText(locale: _locale, key: 'welcome_refresh_state_applying', fallback: fallback);
  }

  @override
  String get welcome_refresh_state_success {
    final fallback = _base.welcome_refresh_state_success;
    return ReRune.resolveText(locale: _locale, key: 'welcome_refresh_state_success', fallback: fallback);
  }

  @override
  String get story_title {
    final fallback = _base.story_title;
    return ReRune.resolveText(locale: _locale, key: 'story_title', fallback: fallback);
  }

  @override
  String get story_body_primary {
    final fallback = _base.story_body_primary;
    return ReRune.resolveText(locale: _locale, key: 'story_body_primary', fallback: fallback);
  }

  @override
  String get story_body_secondary {
    final fallback = _base.story_body_secondary;
    return ReRune.resolveText(locale: _locale, key: 'story_body_secondary', fallback: fallback);
  }

  @override
  String get story_caption {
    final fallback = _base.story_caption;
    return ReRune.resolveText(locale: _locale, key: 'story_caption', fallback: fallback);
  }

  @override
  String get story_refresh_cta {
    final fallback = _base.story_refresh_cta;
    return ReRune.resolveText(locale: _locale, key: 'story_refresh_cta', fallback: fallback);
  }

  @override
  String get refresh_current {
    final fallback = _base.refresh_current;
    return ReRune.resolveText(locale: _locale, key: 'refresh_current', fallback: fallback);
  }

  @override
  String get refresh_error {
    final fallback = _base.refresh_error;
    return ReRune.resolveText(locale: _locale, key: 'refresh_error', fallback: fallback);
  }

  @override
  String get nav_library {
    final fallback = _base.nav_library;
    return ReRune.resolveText(locale: _locale, key: 'nav_library', fallback: fallback);
  }

  @override
  String get nav_discover {
    final fallback = _base.nav_discover;
    return ReRune.resolveText(locale: _locale, key: 'nav_discover', fallback: fallback);
  }

  @override
  String get nav_saved {
    final fallback = _base.nav_saved;
    return ReRune.resolveText(locale: _locale, key: 'nav_saved', fallback: fallback);
  }

  @override
  String get currently_reading {
    final fallback = _base.currently_reading;
    return ReRune.resolveText(locale: _locale, key: 'currently_reading', fallback: fallback);
  }

  @override
  String get collection_issue {
    final fallback = _base.collection_issue;
    return ReRune.resolveText(locale: _locale, key: 'collection_issue', fallback: fallback);
  }

  @override
  String get next_chapter_shelf {
    final fallback = _base.next_chapter_shelf;
    return ReRune.resolveText(locale: _locale, key: 'next_chapter_shelf', fallback: fallback);
  }

  @override
  String get see_all {
    final fallback = _base.see_all;
    return ReRune.resolveText(locale: _locale, key: 'see_all', fallback: fallback);
  }

  @override
  String get story_finished {
    final fallback = _base.story_finished;
    return ReRune.resolveText(locale: _locale, key: 'story_finished', fallback: fallback);
  }

  @override
  String get save_story {
    final fallback = _base.save_story;
    return ReRune.resolveText(locale: _locale, key: 'save_story', fallback: fallback);
  }

  @override
  String get remove_saved {
    final fallback = _base.remove_saved;
    return ReRune.resolveText(locale: _locale, key: 'remove_saved', fallback: fallback);
  }

  @override
  String get discover_title {
    final fallback = _base.discover_title;
    return ReRune.resolveText(locale: _locale, key: 'discover_title', fallback: fallback);
  }

  @override
  String get discover_subtitle {
    final fallback = _base.discover_subtitle;
    return ReRune.resolveText(locale: _locale, key: 'discover_subtitle', fallback: fallback);
  }

  @override
  String get saved_title {
    final fallback = _base.saved_title;
    return ReRune.resolveText(locale: _locale, key: 'saved_title', fallback: fallback);
  }

  @override
  String get saved_subtitle {
    final fallback = _base.saved_subtitle;
    return ReRune.resolveText(locale: _locale, key: 'saved_subtitle', fallback: fallback);
  }

  @override
  String get saved_empty_title {
    final fallback = _base.saved_empty_title;
    return ReRune.resolveText(locale: _locale, key: 'saved_empty_title', fallback: fallback);
  }

  @override
  String get saved_empty_body {
    final fallback = _base.saved_empty_body;
    return ReRune.resolveText(locale: _locale, key: 'saved_empty_body', fallback: fallback);
  }

  @override
  String get explore_stories {
    final fallback = _base.explore_stories;
    return ReRune.resolveText(locale: _locale, key: 'explore_stories', fallback: fallback);
  }

  @override
  String get filter_all {
    final fallback = _base.filter_all;
    return ReRune.resolveText(locale: _locale, key: 'filter_all', fallback: fallback);
  }

  @override
  String get genre_wonder {
    final fallback = _base.genre_wonder;
    return ReRune.resolveText(locale: _locale, key: 'genre_wonder', fallback: fallback);
  }

  @override
  String get genre_adventure {
    final fallback = _base.genre_adventure;
    return ReRune.resolveText(locale: _locale, key: 'genre_adventure', fallback: fallback);
  }

  @override
  String get genre_nature {
    final fallback = _base.genre_nature;
    return ReRune.resolveText(locale: _locale, key: 'genre_nature', fallback: fallback);
  }

  @override
  String get reading_moment {
    final fallback = _base.reading_moment;
    return ReRune.resolveText(locale: _locale, key: 'reading_moment', fallback: fallback);
  }

  @override
  String get reading_quote {
    final fallback = _base.reading_quote;
    return ReRune.resolveText(locale: _locale, key: 'reading_quote', fallback: fallback);
  }

  @override
  String get library_footer {
    final fallback = _base.library_footer;
    return ReRune.resolveText(locale: _locale, key: 'library_footer', fallback: fallback);
  }

  @override
  String get reading_settings {
    final fallback = _base.reading_settings;
    return ReRune.resolveText(locale: _locale, key: 'reading_settings', fallback: fallback);
  }

  @override
  String get settings_description {
    final fallback = _base.settings_description;
    return ReRune.resolveText(locale: _locale, key: 'settings_description', fallback: fallback);
  }

  @override
  String get translation_variant {
    final fallback = _base.translation_variant;
    return ReRune.resolveText(locale: _locale, key: 'translation_variant', fallback: fallback);
  }

  @override
  String get variant_save_error {
    final fallback = _base.variant_save_error;
    return ReRune.resolveText(locale: _locale, key: 'variant_save_error', fallback: fallback);
  }

  @override
  String get staging_mode {
    final fallback = _base.staging_mode;
    return ReRune.resolveText(locale: _locale, key: 'staging_mode', fallback: fallback);
  }

  @override
  String get staging_mode_description {
    final fallback = _base.staging_mode_description;
    return ReRune.resolveText(locale: _locale, key: 'staging_mode_description', fallback: fallback);
  }

  @override
  String get staging_mode_error {
    final fallback = _base.staging_mode_error;
    return ReRune.resolveText(locale: _locale, key: 'staging_mode_error', fallback: fallback);
  }

  @override
  String get session_note {
    final fallback = _base.session_note;
    return ReRune.resolveText(locale: _locale, key: 'session_note', fallback: fallback);
  }

  @override
  String get back_library {
    final fallback = _base.back_library;
    return ReRune.resolveText(locale: _locale, key: 'back_library', fallback: fallback);
  }

  @override
  String get next_chapter {
    final fallback = _base.next_chapter;
    return ReRune.resolveText(locale: _locale, key: 'next_chapter', fallback: fallback);
  }

  @override
  String get finish_story {
    final fallback = _base.finish_story;
    return ReRune.resolveText(locale: _locale, key: 'finish_story', fallback: fallback);
  }

  @override
  String get read_again {
    final fallback = _base.read_again;
    return ReRune.resolveText(locale: _locale, key: 'read_again', fallback: fallback);
  }

  @override
  String get reader_end_title {
    final fallback = _base.reader_end_title;
    return ReRune.resolveText(locale: _locale, key: 'reader_end_title', fallback: fallback);
  }

  @override
  String get reader_end_body {
    final fallback = _base.reader_end_body;
    return ReRune.resolveText(locale: _locale, key: 'reader_end_body', fallback: fallback);
  }

  @override
  String get atlas_description {
    final fallback = _base.atlas_description;
    return ReRune.resolveText(locale: _locale, key: 'atlas_description', fallback: fallback);
  }

  @override
  String get atlas_chapter_one {
    final fallback = _base.atlas_chapter_one;
    return ReRune.resolveText(locale: _locale, key: 'atlas_chapter_one', fallback: fallback);
  }

  @override
  String get atlas_chapter_two {
    final fallback = _base.atlas_chapter_two;
    return ReRune.resolveText(locale: _locale, key: 'atlas_chapter_two', fallback: fallback);
  }

  @override
  String get atlas_body_three {
    final fallback = _base.atlas_body_three;
    return ReRune.resolveText(locale: _locale, key: 'atlas_body_three', fallback: fallback);
  }

  @override
  String get atlas_body_four {
    final fallback = _base.atlas_body_four;
    return ReRune.resolveText(locale: _locale, key: 'atlas_body_four', fallback: fallback);
  }

  @override
  String get lantern_title {
    final fallback = _base.lantern_title;
    return ReRune.resolveText(locale: _locale, key: 'lantern_title', fallback: fallback);
  }

  @override
  String get lantern_description {
    final fallback = _base.lantern_description;
    return ReRune.resolveText(locale: _locale, key: 'lantern_description', fallback: fallback);
  }

  @override
  String get lantern_chapter_one {
    final fallback = _base.lantern_chapter_one;
    return ReRune.resolveText(locale: _locale, key: 'lantern_chapter_one', fallback: fallback);
  }

  @override
  String get lantern_chapter_two {
    final fallback = _base.lantern_chapter_two;
    return ReRune.resolveText(locale: _locale, key: 'lantern_chapter_two', fallback: fallback);
  }

  @override
  String get lantern_body_one {
    final fallback = _base.lantern_body_one;
    return ReRune.resolveText(locale: _locale, key: 'lantern_body_one', fallback: fallback);
  }

  @override
  String get lantern_body_two {
    final fallback = _base.lantern_body_two;
    return ReRune.resolveText(locale: _locale, key: 'lantern_body_two', fallback: fallback);
  }

  @override
  String get lantern_body_three {
    final fallback = _base.lantern_body_three;
    return ReRune.resolveText(locale: _locale, key: 'lantern_body_three', fallback: fallback);
  }

  @override
  String get lantern_body_four {
    final fallback = _base.lantern_body_four;
    return ReRune.resolveText(locale: _locale, key: 'lantern_body_four', fallback: fallback);
  }

  @override
  String get garden_title {
    final fallback = _base.garden_title;
    return ReRune.resolveText(locale: _locale, key: 'garden_title', fallback: fallback);
  }

  @override
  String get garden_description {
    final fallback = _base.garden_description;
    return ReRune.resolveText(locale: _locale, key: 'garden_description', fallback: fallback);
  }

  @override
  String get garden_chapter_one {
    final fallback = _base.garden_chapter_one;
    return ReRune.resolveText(locale: _locale, key: 'garden_chapter_one', fallback: fallback);
  }

  @override
  String get garden_chapter_two {
    final fallback = _base.garden_chapter_two;
    return ReRune.resolveText(locale: _locale, key: 'garden_chapter_two', fallback: fallback);
  }

  @override
  String get garden_body_one {
    final fallback = _base.garden_body_one;
    return ReRune.resolveText(locale: _locale, key: 'garden_body_one', fallback: fallback);
  }

  @override
  String get garden_body_two {
    final fallback = _base.garden_body_two;
    return ReRune.resolveText(locale: _locale, key: 'garden_body_two', fallback: fallback);
  }

  @override
  String get garden_body_three {
    final fallback = _base.garden_body_three;
    return ReRune.resolveText(locale: _locale, key: 'garden_body_three', fallback: fallback);
  }

  @override
  String get garden_body_four {
    final fallback = _base.garden_body_four;
    return ReRune.resolveText(locale: _locale, key: 'garden_body_four', fallback: fallback);
  }

  @override
  String publish_date(String publish_date) {
    final fallback = _base.publish_date(publish_date);
    return ReRune.resolveText(locale: _locale, key: 'publish_date', fallback: fallback, args: {'publish_date': publish_date});
  }

  @override
  String plural_sample(int count) {
    final fallback = _base.plural_sample(count);
    return ReRune.resolveText(locale: _locale, key: 'plural_sample', fallback: fallback, args: {'count': count});
  }

  @override
  String story_by(String author) {
    final fallback = _base.story_by(author);
    return ReRune.resolveText(locale: _locale, key: 'story_by', fallback: fallback, args: {'author': author});
  }

  @override
  String chapter_progress(int current, int total) {
    final fallback = _base.chapter_progress(current, total);
    return ReRune.resolveText(locale: _locale, key: 'chapter_progress', fallback: fallback, args: {'current': current, 'total': total});
  }
}
