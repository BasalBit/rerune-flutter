import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_sq.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('pt'),
    Locale('sq'),
  ];

  /// No description provided for @welcome_badge.
  ///
  /// In en, this message translates to:
  /// **'Localization OTA Demo'**
  String get welcome_badge;

  /// No description provided for @welcome_title.
  ///
  /// In en, this message translates to:
  /// **'Make time for a story.'**
  String get welcome_title;

  /// No description provided for @welcome_subtitle.
  ///
  /// In en, this message translates to:
  /// **'A little less scrolling. A little more wonder.'**
  String get welcome_subtitle;

  /// No description provided for @welcome_locale_label.
  ///
  /// In en, this message translates to:
  /// **'Reading language'**
  String get welcome_locale_label;

  /// No description provided for @welcome_locale_value.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get welcome_locale_value;

  /// No description provided for @welcome_locale_system_default.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get welcome_locale_system_default;

  /// No description provided for @welcome_last_synced_label.
  ///
  /// In en, this message translates to:
  /// **'Last synced'**
  String get welcome_last_synced_label;

  /// No description provided for @welcome_open_story_cta.
  ///
  /// In en, this message translates to:
  /// **'Continue reading'**
  String get welcome_open_story_cta;

  /// No description provided for @welcome_refresh_state_idle.
  ///
  /// In en, this message translates to:
  /// **'Pull to refresh'**
  String get welcome_refresh_state_idle;

  /// No description provided for @welcome_refresh_state_checking.
  ///
  /// In en, this message translates to:
  /// **'Checking for new words…'**
  String get welcome_refresh_state_checking;

  /// No description provided for @welcome_refresh_state_downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading texts...'**
  String get welcome_refresh_state_downloading;

  /// No description provided for @welcome_refresh_state_applying.
  ///
  /// In en, this message translates to:
  /// **'Applying translations...'**
  String get welcome_refresh_state_applying;

  /// No description provided for @welcome_refresh_state_success.
  ///
  /// In en, this message translates to:
  /// **'Your stories have fresh words.'**
  String get welcome_refresh_state_success;

  /// No description provided for @story_title.
  ///
  /// In en, this message translates to:
  /// **'The quiet atlas'**
  String get story_title;

  /// No description provided for @story_body_primary.
  ///
  /// In en, this message translates to:
  /// **'On the morning the river vanished from the maps, Ada packed a pencil, a pear, and her grandfather\'s compass. Outside, the water was still running. She could hear it from the kitchen window.'**
  String get story_body_primary;

  /// No description provided for @story_body_secondary.
  ///
  /// In en, this message translates to:
  /// **'She walked until the road became a path, and the path became a suggestion in the grass. At the bend stood a ferryman with an empty notebook. He had been waiting for someone who knew how to listen.'**
  String get story_body_secondary;

  /// No description provided for @story_caption.
  ///
  /// In en, this message translates to:
  /// **'Live translation content'**
  String get story_caption;

  /// No description provided for @story_refresh_cta.
  ///
  /// In en, this message translates to:
  /// **'Refresh texts'**
  String get story_refresh_cta;

  /// No description provided for @publish_date.
  ///
  /// In en, this message translates to:
  /// **'we did publish on the {publish_date}'**
  String publish_date(String publish_date);

  /// No description provided for @plural_sample.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{There is only one key} many{There are many keys} other{Not sure how many keys there are}}'**
  String plural_sample(int count);

  /// No description provided for @refresh_current.
  ///
  /// In en, this message translates to:
  /// **'Your stories are up to date.'**
  String get refresh_current;

  /// No description provided for @refresh_error.
  ///
  /// In en, this message translates to:
  /// **'Could not refresh. Your stories are still here. Try again.'**
  String get refresh_error;

  /// No description provided for @nav_library.
  ///
  /// In en, this message translates to:
  /// **'My library'**
  String get nav_library;

  /// No description provided for @nav_discover.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get nav_discover;

  /// No description provided for @nav_saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get nav_saved;

  /// No description provided for @currently_reading.
  ///
  /// In en, this message translates to:
  /// **'Currently reading'**
  String get currently_reading;

  /// No description provided for @collection_issue.
  ///
  /// In en, this message translates to:
  /// **'VOL. 01'**
  String get collection_issue;

  /// No description provided for @next_chapter_shelf.
  ///
  /// In en, this message translates to:
  /// **'Your next escape'**
  String get next_chapter_shelf;

  /// No description provided for @see_all.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get see_all;

  /// No description provided for @story_by.
  ///
  /// In en, this message translates to:
  /// **'A story by {author}'**
  String story_by(String author);

  /// No description provided for @chapter_progress.
  ///
  /// In en, this message translates to:
  /// **'Chapter {current} of {total}'**
  String chapter_progress(int current, int total);

  /// No description provided for @story_finished.
  ///
  /// In en, this message translates to:
  /// **'Story completed'**
  String get story_finished;

  /// No description provided for @save_story.
  ///
  /// In en, this message translates to:
  /// **'Save story'**
  String get save_story;

  /// No description provided for @remove_saved.
  ///
  /// In en, this message translates to:
  /// **'Remove from saved'**
  String get remove_saved;

  /// No description provided for @discover_title.
  ///
  /// In en, this message translates to:
  /// **'Find your next world.'**
  String get discover_title;

  /// No description provided for @discover_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Small stories. Somewhere new to go.'**
  String get discover_subtitle;

  /// No description provided for @saved_title.
  ///
  /// In en, this message translates to:
  /// **'Keep a little wonder.'**
  String get saved_title;

  /// No description provided for @saved_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Good stories are worth coming back to.'**
  String get saved_subtitle;

  /// No description provided for @saved_empty_title.
  ///
  /// In en, this message translates to:
  /// **'A shelf of your own'**
  String get saved_empty_title;

  /// No description provided for @saved_empty_body.
  ///
  /// In en, this message translates to:
  /// **'Tap the bookmark on any story to keep it here.'**
  String get saved_empty_body;

  /// No description provided for @explore_stories.
  ///
  /// In en, this message translates to:
  /// **'Explore stories'**
  String get explore_stories;

  /// No description provided for @filter_all.
  ///
  /// In en, this message translates to:
  /// **'All stories'**
  String get filter_all;

  /// No description provided for @genre_wonder.
  ///
  /// In en, this message translates to:
  /// **'Wonder'**
  String get genre_wonder;

  /// No description provided for @genre_adventure.
  ///
  /// In en, this message translates to:
  /// **'Adventure'**
  String get genre_adventure;

  /// No description provided for @genre_nature.
  ///
  /// In en, this message translates to:
  /// **'Nature'**
  String get genre_nature;

  /// No description provided for @reading_moment.
  ///
  /// In en, this message translates to:
  /// **'A MOMENT BETWEEN PAGES'**
  String get reading_moment;

  /// No description provided for @reading_quote.
  ///
  /// In en, this message translates to:
  /// **'Some journeys begin with a single quiet page.'**
  String get reading_quote;

  /// No description provided for @library_footer.
  ///
  /// In en, this message translates to:
  /// **'Three little worlds. Take your time.'**
  String get library_footer;

  /// No description provided for @reading_settings.
  ///
  /// In en, this message translates to:
  /// **'Reading settings'**
  String get reading_settings;

  /// No description provided for @settings_description.
  ///
  /// In en, this message translates to:
  /// **'Try another edition and refresh the words in your stories.'**
  String get settings_description;

  /// No description provided for @translation_variant.
  ///
  /// In en, this message translates to:
  /// **'VIP edition'**
  String get translation_variant;

  /// No description provided for @variant_save_error.
  ///
  /// In en, this message translates to:
  /// **'This edition changed, but could not be saved for next time.'**
  String get variant_save_error;

  /// No description provided for @session_note.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks and reading progress stay with you during this app session.'**
  String get session_note;

  /// No description provided for @back_library.
  ///
  /// In en, this message translates to:
  /// **'Back to library'**
  String get back_library;

  /// No description provided for @next_chapter.
  ///
  /// In en, this message translates to:
  /// **'Next chapter'**
  String get next_chapter;

  /// No description provided for @finish_story.
  ///
  /// In en, this message translates to:
  /// **'Finish story'**
  String get finish_story;

  /// No description provided for @read_again.
  ///
  /// In en, this message translates to:
  /// **'Read again'**
  String get read_again;

  /// No description provided for @reader_end_title.
  ///
  /// In en, this message translates to:
  /// **'A little world, well travelled.'**
  String get reader_end_title;

  /// No description provided for @reader_end_body.
  ///
  /// In en, this message translates to:
  /// **'Stay with the ending for a moment. Another story will be waiting on your shelf.'**
  String get reader_end_body;

  /// No description provided for @atlas_description.
  ///
  /// In en, this message translates to:
  /// **'A mapmaker follows a river that has disappeared from every map.'**
  String get atlas_description;

  /// No description provided for @atlas_chapter_one.
  ///
  /// In en, this message translates to:
  /// **'The river without a name'**
  String get atlas_chapter_one;

  /// No description provided for @atlas_chapter_two.
  ///
  /// In en, this message translates to:
  /// **'What the map remembers'**
  String get atlas_chapter_two;

  /// No description provided for @atlas_body_three.
  ///
  /// In en, this message translates to:
  /// **'The ferryman asked Ada to draw the sound of the water. She made a crooked line, then another. Soon the page held the bridge where her mother sang and the shallows where she had lost a shoe.'**
  String get atlas_body_three;

  /// No description provided for @atlas_body_four.
  ///
  /// In en, this message translates to:
  /// **'By evening, the river had returned to the atlas. Not quite where it had been before, but close enough to find. Ada left the last page blank. There were places she had yet to remember.'**
  String get atlas_body_four;

  /// No description provided for @lantern_title.
  ///
  /// In en, this message translates to:
  /// **'The last lantern'**
  String get lantern_title;

  /// No description provided for @lantern_description.
  ///
  /// In en, this message translates to:
  /// **'One small light crosses a mountain before the winter snow.'**
  String get lantern_description;

  /// No description provided for @lantern_chapter_one.
  ///
  /// In en, this message translates to:
  /// **'A light at the station'**
  String get lantern_chapter_one;

  /// No description provided for @lantern_chapter_two.
  ///
  /// In en, this message translates to:
  /// **'The other side of night'**
  String get lantern_chapter_two;

  /// No description provided for @lantern_body_one.
  ///
  /// In en, this message translates to:
  /// **'Every autumn, Leo lit the lanterns along the mountain railway. This year one stayed dark. He found it at the last station, beside a letter addressed simply to whoever comes this far.'**
  String get lantern_body_one;

  /// No description provided for @lantern_body_two.
  ///
  /// In en, this message translates to:
  /// **'The letter contained a match and a drawing of a house beyond the ridge. Leo filled the lantern, buttoned his coat, and stepped off the platform. Above him, the first snow moved between the stars.'**
  String get lantern_body_two;

  /// No description provided for @lantern_body_three.
  ///
  /// In en, this message translates to:
  /// **'He reached the house just before dawn. In its window sat an old railway clock, stopped at seven. A woman opened the door with two cups of tea. She had kept the kettle warm all night.'**
  String get lantern_body_three;

  /// No description provided for @lantern_body_four.
  ///
  /// In en, this message translates to:
  /// **'They hung the lantern outside together. Down in the valley, the first train rounded the bend. Its driver sounded the horn, and a hundred windows caught the little light. The station was no longer the end of the line.'**
  String get lantern_body_four;

  /// No description provided for @garden_title.
  ///
  /// In en, this message translates to:
  /// **'A garden for tomorrow'**
  String get garden_title;

  /// No description provided for @garden_description.
  ///
  /// In en, this message translates to:
  /// **'A forgotten rooftop becomes a place for things to begin again.'**
  String get garden_description;

  /// No description provided for @garden_chapter_one.
  ///
  /// In en, this message translates to:
  /// **'The seed in the pocket'**
  String get garden_chapter_one;

  /// No description provided for @garden_chapter_two.
  ///
  /// In en, this message translates to:
  /// **'Room for the rain'**
  String get garden_chapter_two;

  /// No description provided for @garden_body_one.
  ///
  /// In en, this message translates to:
  /// **'When June moved into the building, she found a seed in the pocket of a borrowed coat. Nobody knew what it would become. She carried it to the roof in a chipped blue cup.'**
  String get garden_body_one;

  /// No description provided for @garden_body_two.
  ///
  /// In en, this message translates to:
  /// **'The roof had three puddles, a broken chair, and an excellent view of the clouds. June added soil to the cup. The neighbour from downstairs brought a spoon. It was the smallest garden either had ever seen.'**
  String get garden_body_two;

  /// No description provided for @garden_body_three.
  ///
  /// In en, this message translates to:
  /// **'For six days, nothing happened. On the seventh, a green curl appeared. By then there were twelve cups on the roof, a repaired chair, and someone who remembered to water them each morning.'**
  String get garden_body_three;

  /// No description provided for @garden_body_four.
  ///
  /// In en, this message translates to:
  /// **'By summer, the seed had become a sunflower, taller than June. They never found out who had left it in the coat. When autumn came, they filled every pocket they could find with seeds.'**
  String get garden_body_four;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'de',
    'en',
    'es',
    'fr',
    'it',
    'pt',
    'sq',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'pt':
      return AppLocalizationsPt();
    case 'sq':
      return AppLocalizationsSq();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
