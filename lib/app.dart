import 'package:flutter/material.dart';
import 'package:rerune/rerune.dart';

import 'locale_notifier.dart';
import 'screens/welcome_screen.dart';
import 'theme/app_theme.dart';

class ReRuneApp extends StatelessWidget {
  const ReRuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ReRuneBuilder(
      builder: (context) {
        return ValueListenableBuilder<Locale?>(
          valueListenable: localeNotifier,
          builder: (context, locale, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'ReRune',
              theme: AppTheme.darkTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: ThemeMode.dark,
              locale: locale,
              localizationsDelegates: ReRune.localizationsDelegates,
              supportedLocales: ReRune.supportedLocales,
              home: const WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}
