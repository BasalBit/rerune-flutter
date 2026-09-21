import 'package:flutter/widgets.dart';
import 'package:rerune/rerune.dart';

import 'app.dart';
import 'l10n/gen/app_localizations.rerune.g.dart';

/// Set to `true` to start in staging mode while project staging is enabled
/// in the ReRune project.
///
/// Staging mode fetches complete snapshots on every synchronization and keeps
/// its cache isolated from production synchronization. The reading settings
/// sheet changes it with `ReRune.setStaging(bool)` and reads
/// `ReRune.isStaging` for the current selection.
const bool kReruneStagingMode = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ReRune.setup(
    otaPublishId:
        '03141fc5dde6e5a1f9debf99ee68bbb125dc830412fdfb85af4834d3de341b3b',
    localizations: reRuneAppLocalizationsConfig,
    staging: kReruneStagingMode,
  );
  runApp(const ReRuneApp());
}
