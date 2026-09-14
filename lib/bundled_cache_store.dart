import 'package:rerune/rerune.dart';

/// Bundled previews never reuse cached text from a configured live launch.
class BundledCacheStore extends ReRuneCacheStore {
  final _settings = <String, String>{};

  @override
  Future<String?> readSetting(String key) async => _settings[key];

  @override
  Future<void> writeSetting(String key, String value) async {
    _settings[key] = value;
  }

  @override
  Future<ReRuneCachedManifest?> readManifest() async => null;

  @override
  Future<void> writeManifest(ReRuneCachedManifest manifest) async {}

  @override
  Future<ReRuneCachedLocaleBundle?> readLocaleBundle(String localeKey) async =>
      null;

  @override
  Future<void> writeLocaleBundle(
    String localeKey,
    ReRuneCachedLocaleBundle bundle,
  ) async {}

  @override
  Future<void> deleteLocaleBundle(String localeKey) async {}
}
