import 'package:flutter/material.dart';
import '../l10n/gen/app_localizations.dart';
import '../models/storybook.dart';
import '../theme/app_theme.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({
    super.key,
    required this.book,
    required this.id,
    this.onCover = false,
  });
  final Storybook book;
  final StoryId id;
  final bool onCover;
  @override
  Widget build(BuildContext context) {
    final saved = book.isSaved(id);
    final t = AppLocalizations.of(context)!;
    return Semantics(
      toggled: saved,
      child: IconButton(
        key: ValueKey('bookmark-${id.name}'),
        tooltip: saved ? t.remove_saved : t.save_story,
        onPressed: () => book.toggleSaved(id),
        style: IconButton.styleFrom(
          backgroundColor: onCover
              ? AppTheme.bgPrimary.withValues(alpha: .86)
              : Colors.transparent,
          foregroundColor: saved
              ? AppTheme.accentPrimary
              : AppTheme.textPrimary,
        ),
        icon: Icon(
          saved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
        ),
      ),
    );
  }
}

class ReadingProgress extends StatelessWidget {
  const ReadingProgress({super.key, required this.book, required this.story});
  final Storybook book;
  final Story story;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final value = book.progress(story);
    final label = value == 1
        ? t.story_finished
        : t.chapter_progress(
            book.chapterIndex(story) + 1,
            story.chapters.length,
          );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(label, style: Theme.of(context).textTheme.labelLarge),
            ),
            Text(
              '${(value * 100).round()}%',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        const SizedBox(height: 10),
        LinearProgressIndicator(
          value: value,
          minHeight: 4,
          borderRadius: BorderRadius.circular(10),
          backgroundColor: AppTheme.borderSubtle,
          semanticsLabel: label,
          semanticsValue: '${(value * 100).round()}%',
        ),
      ],
    );
  }
}
