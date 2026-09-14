import 'package:flutter/material.dart';
import 'package:rerune/rerune.dart';
import '../l10n/gen/app_localizations.dart';
import '../models/storybook.dart';
import '../theme/app_theme.dart';
import '../widgets/library_header.dart';
import '../widgets/reading_controls.dart';
import '../widgets/refresh_texts_button.dart';
import '../widgets/story_cover.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key, required this.book, required this.id});
  final Storybook book;
  final StoryId id;
  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final _scroll = ScrollController();
  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _advance(Story story) {
    if (widget.book.progress(story) == 1) {
      widget.book.restart(story.id);
    } else {
      widget.book.finishChapter(story);
    }
    _scroll.jumpTo(0);
  }

  @override
  Widget build(BuildContext context) => ReRuneBuilder(
    builder: (context) => ListenableBuilder(
      listenable: widget.book,
      builder: (context, _) {
        final t = AppLocalizations.of(context)!;
        final story = Story.resolve(widget.id, t);
        final chapter = story.chapters[widget.book.chapterIndex(story)];
        final finished = widget.book.progress(story) == 1;
        final lastChapter =
            widget.book.chapterIndex(story) == story.chapters.length - 1;
        return Scaffold(
          body: SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 720),
                child: CustomScrollView(
                  controller: _scroll,
                  key: const ValueKey('reader-scroll'),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                        child: Row(
                          children: [
                            IconButton(
                              tooltip: t.back_library,
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(Icons.arrow_back_rounded),
                            ),
                            Expanded(
                              child: Text(
                                story.title,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                            const LanguageMenu(),
                          ],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 200,
                              child: StoryCover(
                                id: story.id,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: BookmarkButton(
                                      book: widget.book,
                                      id: story.id,
                                      onCover: true,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            ReadingProgress(book: widget.book, story: story),
                            const SizedBox(height: 24),
                            if (finished) ...[
                              const Icon(
                                Icons.auto_stories_rounded,
                                size: 38,
                                color: AppTheme.accentPrimary,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                t.reader_end_title,
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineMedium,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                t.reader_end_body,
                                textAlign: TextAlign.center,
                              ),
                            ] else ...[
                              Text(
                                chapter.title,
                                key: const ValueKey('chapter-title'),
                                style: const TextStyle(
                                  fontFamily: 'Lora',

                                  fontSize: 30,
                                  height: 1.25,
                                  color: AppTheme.textPrimary,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                t.story_by(story.author),
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              const SizedBox(height: 26),
                              for (final paragraph in chapter.paragraphs)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 22),
                                  child: Text(
                                    paragraph,
                                    style: const TextStyle(
                                      fontFamily: 'Lora',

                                      fontSize: 19,
                                      height: 1.85,
                                      color: Color(0xFFD5D5CF),
                                    ),
                                  ),
                                ),
                            ],
                            const SizedBox(height: 12),
                            FilledButton(
                              key: const ValueKey('advance-chapter'),
                              onPressed: () => _advance(story),
                              child: Text(
                                finished
                                    ? t.read_again
                                    : lastChapter
                                    ? t.finish_story
                                    : t.next_chapter,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const RefreshTextsButton(),
                            const SizedBox(height: 32),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
