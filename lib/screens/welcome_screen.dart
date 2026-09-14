import 'package:flutter/material.dart';
import 'package:rerune/rerune.dart';
import '../l10n/gen/app_localizations.dart';
import '../models/storybook.dart';
import '../theme/app_theme.dart';
import '../widgets/library_header.dart';
import '../widgets/reading_controls.dart';
import '../widgets/refresh_texts_button.dart';
import '../widgets/story_cover.dart';
import 'story_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _book = Storybook();
  final _scrollControllers = List.generate(3, (_) => ScrollController());
  int _tab = 0;
  StoryId? _filter;
  @override
  void dispose() {
    _book.dispose();
    for (final controller in _scrollControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _open(StoryId id) {
    _book.open(id);
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => StoryScreen(book: _book, id: id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => ReRuneBuilder(
    builder: (context) => ListenableBuilder(
      listenable: _book,
      builder: (context, _) {
        final t = AppLocalizations.of(context)!;
        final current = Story.resolve(_book.current, t);
        return Scaffold(
          body: SafeArea(
            bottom: false,
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1040),
                child: CustomScrollView(
                  key: PageStorageKey('library-scroll-$_tab'),
                  controller: _scrollControllers[_tab],
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const LibraryHeader(),
                            const SizedBox(height: 26),
                            Text(switch (_tab) {
                              0 => t.welcome_title,
                              1 => t.discover_title,
                              _ => t.saved_title,
                            }, style: Theme.of(context).textTheme.displaySmall),
                            const SizedBox(height: 8),
                            Text(switch (_tab) {
                              0 => t.welcome_subtitle,
                              1 => t.discover_subtitle,
                              _ => t.saved_subtitle,
                            }),
                            const SizedBox(height: 26),
                          ],
                        ),
                      ),
                    ),
                    if (_tab == 0)
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              final feature = _featured(context, current, t);
                              final shelf = _shelf(
                                context,
                                t,
                                StoryId.values
                                    .where((id) => id != current.id)
                                    .toList(),
                              );
                              if (constraints.maxWidth >= 760) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 6, child: feature),
                                    const SizedBox(width: 32),
                                    Expanded(flex: 5, child: shelf),
                                  ],
                                );
                              }
                              return Column(
                                children: [
                                  feature,
                                  const SizedBox(height: 28),
                                  shelf,
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    if (_tab == 1) ...[
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              ChoiceChip(
                                label: Text(t.filter_all),
                                selected: _filter == null,
                                onSelected: (_) =>
                                    setState(() => _filter = null),
                              ),
                              for (final id in StoryId.values)
                                ChoiceChip(
                                  label: Text(Story.resolve(id, t).genre),
                                  selected: _filter == id,
                                  onSelected: (selected) => setState(
                                    () => _filter = selected ? id : null,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      _storyList(
                        t,
                        StoryId.values
                            .where((id) => _filter == null || id == _filter)
                            .toList(),
                      ),
                    ],
                    if (_tab == 2) ...[
                      if (StoryId.values.any(_book.isSaved))
                        _storyList(
                          t,
                          StoryId.values.where(_book.isSaved).toList(),
                        )
                      else
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          sliver: SliverToBoxAdapter(
                            child: Container(
                              padding: const EdgeInsets.all(28),
                              decoration: BoxDecoration(
                                color: AppTheme.bgSecondary,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.bookmark_border_rounded,
                                    color: AppTheme.accentPrimary,
                                    size: 32,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    t.saved_empty_title,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    t.saved_empty_body,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 20),
                                  FilledButton(
                                    onPressed: () => setState(() => _tab = 1),
                                    child: Text(t.explore_stories),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          children: [
                            const RefreshTextsButton(),
                            const SizedBox(height: 16),
                            Text(
                              t.library_footer,
                              style: Theme.of(context).textTheme.labelMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: AppTheme.borderSubtle)),
            ),
            child: NavigationBar(
              selectedIndex: _tab,
              onDestinationSelected: (value) => setState(() => _tab = value),
              destinations: [
                NavigationDestination(
                  icon: const Icon(Icons.library_books_outlined),
                  selectedIcon: const Icon(Icons.library_books_rounded),
                  label: t.nav_library,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.explore_outlined),
                  selectedIcon: const Icon(Icons.explore_rounded),
                  label: t.nav_discover,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.bookmark_border_rounded),
                  selectedIcon: const Icon(Icons.bookmark_rounded),
                  label: t.nav_saved,
                ),
              ],
            ),
          ),
        );
      },
    ),
  );

  Widget _featured(
    BuildContext context,
    Story story,
    AppLocalizations t,
  ) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Row(
        children: [
          const Icon(Icons.circle, size: 6, color: AppTheme.accentPrimary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              t.currently_reading,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          Text(
            t.collection_issue,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
      const SizedBox(height: 14),
      // The artwork keeps a minimum height; larger text expands the cover naturally.
      StoryCover(
        id: story.id,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 245),
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  story.title,
                  style: TextStyle(
                    fontSize: 29,
                    height: 1.15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -.8,
                    color: story.id == StoryId.lantern
                        ? AppTheme.textPrimary
                        : const Color(0xFF193D3D),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  t.story_by(story.author),
                  style: TextStyle(
                    fontSize: 12,
                    color: story.id == StoryId.lantern
                        ? AppTheme.textPrimary
                        : const Color(0xFF294C49),
                  ),
                ),
                const SizedBox(height: 105),
                BookmarkButton(book: _book, id: story.id, onCover: true),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 18),
      ReadingProgress(book: _book, story: story),
      const SizedBox(height: 18),
      FilledButton(
        key: const ValueKey('continue-reading'),
        onPressed: () => _open(story.id),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                t.welcome_open_story_cta,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 14),
            const Icon(Icons.arrow_forward_rounded, size: 20),
          ],
        ),
      ),
    ],
  );

  Widget _shelf(BuildContext context, AppLocalizations t, List<StoryId> ids) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  t.next_chapter_shelf,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              TextButton(
                onPressed: () => setState(() => _tab = 1),
                child: Text(t.see_all),
              ),
            ],
          ),
          const SizedBox(height: 8),
          for (final id in ids)
            Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: _StoryTile(
                story: Story.resolve(id, t),
                book: _book,
                onOpen: () => _open(id),
              ),
            ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: AppTheme.borderSubtle),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.reading_moment,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: AppTheme.accentPrimary,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  t.reading_quote,
                  style: const TextStyle(
                    fontFamily: 'Lora',

                    fontSize: 21,
                    height: 1.5,
                    color: AppTheme.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget _storyList(AppLocalizations t, List<StoryId> ids) => SliverPadding(
    padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
    sliver: SliverList.separated(
      itemCount: ids.length,
      separatorBuilder: (_, _) => const SizedBox(height: 16),
      itemBuilder: (context, index) => _StoryTile(
        story: Story.resolve(ids[index], t),
        book: _book,
        onOpen: () => _open(ids[index]),
        expanded: true,
      ),
    ),
  );
}

class _StoryTile extends StatelessWidget {
  const _StoryTile({
    required this.story,
    required this.book,
    required this.onOpen,
    this.expanded = false,
  });
  final Story story;
  final Storybook book;
  final VoidCallback onOpen;
  final bool expanded;
  @override
  Widget build(BuildContext context) => Material(
    color: AppTheme.bgSecondary,
    borderRadius: BorderRadius.circular(22),
    clipBehavior: Clip.antiAlias,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            key: ValueKey('open-${story.id.name}'),
            onTap: onOpen,
            borderRadius: BorderRadius.circular(22),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  SizedBox(
                    width: expanded ? 88 : 70,
                    height: expanded ? 118 : 92,
                    child: StoryCover(id: story.id),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          story.genre,
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(color: AppTheme.accentStrong),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          story.title,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          story.author,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        if (expanded) ...[
                          const SizedBox(height: 8),
                          Text(story.description),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        BookmarkButton(book: book, id: story.id),
        const SizedBox(width: 4),
      ],
    ),
  );
}
