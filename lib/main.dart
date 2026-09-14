import 'package:flutter/widgets.dart';
import 'package:rerune/rerune.dart';

import 'app.dart';
import 'l10n/gen/app_localizations.rerune.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ReRune.setup(
    otaPublishId:
        '03141fc5dde6e5a1f9debf99ee68bbb125dc830412fdfb85af4834d3de341b3b',
    localizations: reRuneAppLocalizationsConfig,
  );
  runApp(const ReRuneApp());
}
