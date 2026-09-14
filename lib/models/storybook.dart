import 'package:flutter/foundation.dart';
import '../l10n/gen/app_localizations.dart';

enum StoryId { atlas, lantern, garden }

class StoryChapter {
  const StoryChapter(this.title, this.paragraphs);
  final String title;
  final List<String> paragraphs;
}

class Story {
  const Story({
    required this.id,
    required this.title,
    required this.author,
    required this.genre,
    required this.description,
    required this.chapters,
  });
  final StoryId id;
  final String title;
  final String author;
  final String genre;
  final String description;
  final List<StoryChapter> chapters;

  // Read generated getters during builds so locale and OTA changes stay live.
  static Story resolve(StoryId id, AppLocalizations t) => switch (id) {
    StoryId.atlas => Story(
      id: id,
      title: t.story_title,
      author: 'Nora Vale',
      genre: t.genre_wonder,
      description: t.atlas_description,
      chapters: [
        StoryChapter(t.atlas_chapter_one, [
          t.story_body_primary,
          t.story_body_secondary,
        ]),
        StoryChapter(t.atlas_chapter_two, [
          t.atlas_body_three,
          t.atlas_body_four,
        ]),
      ],
    ),
    StoryId.lantern => Story(
      id: id,
      title: t.lantern_title,
      author: 'Elias North',
      genre: t.genre_adventure,
      description: t.lantern_description,
      chapters: [
        StoryChapter(t.lantern_chapter_one, [
          t.lantern_body_one,
          t.lantern_body_two,
        ]),
        StoryChapter(t.lantern_chapter_two, [
          t.lantern_body_three,
          t.lantern_body_four,
        ]),
      ],
    ),
    StoryId.garden => Story(
      id: id,
      title: t.garden_title,
      author: 'Mila Sol',
      genre: t.genre_nature,
      description: t.garden_description,
      chapters: [
        StoryChapter(t.garden_chapter_one, [
          t.garden_body_one,
          t.garden_body_two,
        ]),
        StoryChapter(t.garden_chapter_two, [
          t.garden_body_three,
          t.garden_body_four,
        ]),
      ],
    ),
  };
}

/// Reading state belongs to the sample app and lasts for this app session.
class Storybook extends ChangeNotifier {
  final Set<StoryId> _saved = {};
  final Map<StoryId, int> _completedChapters = {};
  StoryId current = StoryId.atlas;
  bool isSaved(StoryId id) => _saved.contains(id);
  int completed(StoryId id) => _completedChapters[id] ?? 0;
  int chapterIndex(Story story) =>
      completed(story.id).clamp(0, story.chapters.length - 1);
  double progress(Story story) => completed(story.id) / story.chapters.length;
  void open(StoryId id) {
    current = id;
    notifyListeners();
  }

  void toggleSaved(StoryId id) {
    if (!_saved.remove(id)) _saved.add(id);
    notifyListeners();
  }

  void finishChapter(Story story) {
    _completedChapters[story.id] = (completed(story.id) + 1).clamp(
      0,
      story.chapters.length,
    );
    notifyListeners();
  }

  void restart(StoryId id) {
    _completedChapters.remove(id);
    notifyListeners();
  }
}
