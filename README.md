# ReRune Flutter example

A standalone consumer app for the published [ReRune Flutter SDK](https://pub.dev/packages/rerune). It demonstrates typed localizations, seven languages, live text updates, and translation variants in a small reading app.

## Run

Install Flutter **3.44.0** with Dart **3.12.0** (the versions used in CI), then run from this repository:

```bash
flutter pub get
flutter run -d chrome
```

Use `flutter run` to choose another available device. Platform builds need their usual Flutter toolchains, such as Xcode for iOS or the Android SDK for Android.

`pubspec.yaml` uses `rerune: ^1.2.0`; the lockfile pins version **1.2.0** from pub.dev. No ReRune source checkout, SDK copies, authoring CLI, or account is needed to run the example. Generated localizations, fonts, and ReRune branding assets are included.

The app uses the demo project's OTA publish ID embedded in `lib/main.dart`. It checks for published text on launch and caches delivered translations. Bundled text is available when delivery is unavailable. Run `lib/main.dart` from your editor or use `flutter run`; no local configuration is required.

## Try live updates

Use Refresh to fetch the demo project's latest published text. The edition switch selects the `vip` variant and previews the localized headline; keys without VIP translations keep their Main wording. The app persists the selected edition. Language selection, bookmarks, and reading progress last for the app session.

To test your own publications, replace `otaPublishId` in `lib/main.dart` with your project's delivery ID and restart the app. Delivery IDs are intended for client apps. Authoring API keys are not required by the app and must not be bundled with it.

## Develop and test

Edit the ARB files in `lib/l10n`, then regenerate with the installed Flutter SDK and the ReRune builder from pub.dev:

```bash
flutter gen-l10n
dart run build_runner build
flutter analyze
flutter test
flutter build web --no-web-resources-cdn
```

Commit generated Dart files and `pubspec.lock`. Flutter's localization generator rejects redundant ICU `offset:0` syntax; omit it from ARBs. Do not edit generated Dart manually.

CI starts with a fresh package cache, checks generation consistency, runs analysis and widget tests, and builds the web app. Tests exercise the published SDK through public cache APIs and mocked HTTP responses; they need no ReRune service credentials.

The Android release configuration uses debug signing for local testing. Configure production signing before distributing an app.

Application code, stories, and original artwork use the [MIT License](LICENSE). Bundled fonts retain their [original licenses](THIRD_PARTY_NOTICES.md).
