// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome_badge => 'Localization OTA Demo';

  @override
  String get welcome_title => 'Make time for a story.';

  @override
  String get welcome_subtitle =>
      'A little less scrolling. A little more wonder.';

  @override
  String get welcome_locale_label => 'Reading language';

  @override
  String get welcome_locale_value => 'English';

  @override
  String get welcome_locale_system_default => 'System default';

  @override
  String get welcome_last_synced_label => 'Last synced';

  @override
  String get welcome_open_story_cta => 'Continue reading';

  @override
  String get welcome_refresh_state_idle => 'Pull to refresh';

  @override
  String get welcome_refresh_state_checking => 'Checking for new words…';

  @override
  String get welcome_refresh_state_downloading => 'Downloading texts...';

  @override
  String get welcome_refresh_state_applying => 'Applying translations...';

  @override
  String get welcome_refresh_state_success => 'Your stories have fresh words.';

  @override
  String get story_title => 'The quiet atlas';

  @override
  String get story_body_primary =>
      'On the morning the river vanished from the maps, Ada packed a pencil, a pear, and her grandfather\'s compass. Outside, the water was still running. She could hear it from the kitchen window.';

  @override
  String get story_body_secondary =>
      'She walked until the road became a path, and the path became a suggestion in the grass. At the bend stood a ferryman with an empty notebook. He had been waiting for someone who knew how to listen.';

  @override
  String get story_caption => 'Live translation content';

  @override
  String get story_refresh_cta => 'Refresh texts';

  @override
  String publish_date(String publish_date) {
    return 'we did publish on the $publish_date';
  }

  @override
  String plural_sample(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Not sure how many keys there are',
      many: 'There are many keys',
      one: 'There is only one key',
    );
    return '$_temp0';
  }

  @override
  String get refresh_current => 'Your stories are up to date.';

  @override
  String get refresh_error =>
      'Could not refresh. Your stories are still here. Try again.';

  @override
  String get nav_library => 'My library';

  @override
  String get nav_discover => 'Discover';

  @override
  String get nav_saved => 'Saved';

  @override
  String get currently_reading => 'Currently reading';

  @override
  String get collection_issue => 'VOL. 01';

  @override
  String get next_chapter_shelf => 'Your next escape';

  @override
  String get see_all => 'View all';

  @override
  String story_by(String author) {
    return 'A story by $author';
  }

  @override
  String chapter_progress(int current, int total) {
    return 'Chapter $current of $total';
  }

  @override
  String get story_finished => 'Story completed';

  @override
  String get save_story => 'Save story';

  @override
  String get remove_saved => 'Remove from saved';

  @override
  String get discover_title => 'Find your next world.';

  @override
  String get discover_subtitle => 'Small stories. Somewhere new to go.';

  @override
  String get saved_title => 'Keep a little wonder.';

  @override
  String get saved_subtitle => 'Good stories are worth coming back to.';

  @override
  String get saved_empty_title => 'A shelf of your own';

  @override
  String get saved_empty_body =>
      'Tap the bookmark on any story to keep it here.';

  @override
  String get explore_stories => 'Explore stories';

  @override
  String get filter_all => 'All stories';

  @override
  String get genre_wonder => 'Wonder';

  @override
  String get genre_adventure => 'Adventure';

  @override
  String get genre_nature => 'Nature';

  @override
  String get reading_moment => 'A MOMENT BETWEEN PAGES';

  @override
  String get reading_quote => 'Some journeys begin with a single quiet page.';

  @override
  String get library_footer => 'Three little worlds. Take your time.';

  @override
  String get reading_settings => 'Reading settings';

  @override
  String get settings_description =>
      'Try another edition and refresh the words in your stories.';

  @override
  String get translation_variant => 'VIP edition';

  @override
  String get variant_save_error =>
      'This edition changed, but could not be saved for next time.';

  @override
  String get session_note =>
      'Bookmarks and reading progress stay with you during this app session.';

  @override
  String get back_library => 'Back to library';

  @override
  String get next_chapter => 'Next chapter';

  @override
  String get finish_story => 'Finish story';

  @override
  String get read_again => 'Read again';

  @override
  String get reader_end_title => 'A little world, well travelled.';

  @override
  String get reader_end_body =>
      'Stay with the ending for a moment. Another story will be waiting on your shelf.';

  @override
  String get atlas_description =>
      'A mapmaker follows a river that has disappeared from every map.';

  @override
  String get atlas_chapter_one => 'The river without a name';

  @override
  String get atlas_chapter_two => 'What the map remembers';

  @override
  String get atlas_body_three =>
      'The ferryman asked Ada to draw the sound of the water. She made a crooked line, then another. Soon the page held the bridge where her mother sang and the shallows where she had lost a shoe.';

  @override
  String get atlas_body_four =>
      'By evening, the river had returned to the atlas. Not quite where it had been before, but close enough to find. Ada left the last page blank. There were places she had yet to remember.';

  @override
  String get lantern_title => 'The last lantern';

  @override
  String get lantern_description =>
      'One small light crosses a mountain before the winter snow.';

  @override
  String get lantern_chapter_one => 'A light at the station';

  @override
  String get lantern_chapter_two => 'The other side of night';

  @override
  String get lantern_body_one =>
      'Every autumn, Leo lit the lanterns along the mountain railway. This year one stayed dark. He found it at the last station, beside a letter addressed simply to whoever comes this far.';

  @override
  String get lantern_body_two =>
      'The letter contained a match and a drawing of a house beyond the ridge. Leo filled the lantern, buttoned his coat, and stepped off the platform. Above him, the first snow moved between the stars.';

  @override
  String get lantern_body_three =>
      'He reached the house just before dawn. In its window sat an old railway clock, stopped at seven. A woman opened the door with two cups of tea. She had kept the kettle warm all night.';

  @override
  String get lantern_body_four =>
      'They hung the lantern outside together. Down in the valley, the first train rounded the bend. Its driver sounded the horn, and a hundred windows caught the little light. The station was no longer the end of the line.';

  @override
  String get garden_title => 'A garden for tomorrow';

  @override
  String get garden_description =>
      'A forgotten rooftop becomes a place for things to begin again.';

  @override
  String get garden_chapter_one => 'The seed in the pocket';

  @override
  String get garden_chapter_two => 'Room for the rain';

  @override
  String get garden_body_one =>
      'When June moved into the building, she found a seed in the pocket of a borrowed coat. Nobody knew what it would become. She carried it to the roof in a chipped blue cup.';

  @override
  String get garden_body_two =>
      'The roof had three puddles, a broken chair, and an excellent view of the clouds. June added soil to the cup. The neighbour from downstairs brought a spoon. It was the smallest garden either had ever seen.';

  @override
  String get garden_body_three =>
      'For six days, nothing happened. On the seventh, a green curl appeared. By then there were twelve cups on the roof, a repaired chair, and someone who remembered to water them each morning.';

  @override
  String get garden_body_four =>
      'By summer, the seed had become a sunflower, taller than June. They never found out who had left it in the coat. When autumn came, they filled every pocket they could find with seeds.';
}
