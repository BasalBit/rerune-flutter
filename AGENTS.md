# ReRune example agent rules

- Work in this standalone app repository. Keep agent writes, caches, temporary
  files, captures, and logs inside its canonical root. Resolve output paths and
  symlink targets before writing. Use the installed Flutter and Dart SDKs.
  Configure contained cache paths per command; remove temporary agent runners
  after verification.
- Check free disk space before duplicating SDKs or starting native builds.
  Remove disposable SDK copies, Gradle caches, and clean-source verification
  copies after use. Before deleting a referenced SDK, regenerate package
  configuration against the installed SDK and verify every package path exists.
- Never access any `.zshrc` file, directly or indirectly, including contents,
  metadata, startup, aliases, backups, or searches. Use noninteractive Bash with
  login startup disabled. Explicitly exclude `.zshrc` from searches. Preserve
  this prohibition in every later handoff and delegation.
- Inspect relevant production code, tests, dependencies, and generation paths
  before implementation claims. Executable checks establish behavior.
- Keep example documentation in the root README. Do not create a docs directory,
  feature records, or agent session reports in this example repository.
- Keep the ReRune app name and existing ReRune logo and launcher icons across
  platforms. The reading theme does not change the app's branding.
- Treat a fresh clone with Flutter installed as the consumer baseline. Default
  launch and tests must work without local ReRune source, authoring tools,
  credentials, or ignored configuration. Live delivery is opt-in. Verify
  dependency resolution from pub.dev using an empty temporary package cache;
  remove that cache and the clean-source copy after verification.
- Use only the released public `rerune` package. Regenerate `lib/l10n/gen` with
  `flutter gen-l10n` and `dart run build_runner build`; commit the output and app
  lockfile. Never hand-edit generated Dart. Omit `@@locale` and redundant
  `offset:0` from ARBs because Flutter's generator rejects that offset syntax.
- App text changes require comparison, scoped synchronization, publication, and
  delivery verification against the user-approved target configured locally.
  Preserve unrelated keys, locales, translations, and variants. This is standing
  authorization for those text operations only. If equivalent values are already
  published, verify and reuse them. Only the service CLI manages sync metadata.
  Inspect its current help before synchronization. Never pull over newer local
  catalogs without comparing and preserving them first.
- Keep authoring credentials and local delivery configuration in ignored files
  or the process environment. A delivery ID is not an authoring credential.
  Record publication revisions and results without credentials or private service
  details. If blocked, finish local work and state the exact publication blocker.
- Write generated captures to ignored `build/captures`. Run the checks in README
  and distinguish widget, capture, live service, native build, and device
  verification results in the response.
- Commit, push, deployment, and package release require authorization for the
  current task.
