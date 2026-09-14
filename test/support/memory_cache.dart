import 'dart:convert';
import 'package:rerune/rerune.dart';

class MemoryCacheStore extends ReRuneCacheStore {
  MemoryCacheStore()
    : cachedManifest = ReRuneCachedManifest(
        manifest: ReRuneManifest(
          version: 1,
          locales: {
            'en': ReRuneManifestLocale(
              name: 'English',
              version: 1,
              minimumDeltaBaseVersion: 1,
              url: Uri.parse('https://cdn.example.com/en.bundle'),
            ),
            'es': ReRuneManifestLocale(
              name: 'Español',
              version: 1,
              minimumDeltaBaseVersion: 1,
              url: Uri.parse('https://cdn.example.com/es.bundle'),
            ),
          },
          mainLanguage: 'en',
        ),
      ),
      cachedBundles = {
        'en': ReRuneCachedLocaleBundle(
          data: jsonEncode([
            {
              'type': 'key',
              'key': 'welcome_title',
              'values': [
                {
                  'lang': 'en',
                  'value': 'Welcome to ReRune',
                  'variations': [
                    {'variation': 'vip', 'value': 'VIP welcome'},
                  ],
                },
              ],
            },
            {
              'type': 'key',
              'key': 'publish_date',
              'values': [
                {
                  'lang': 'en',
                  'value': 'Published on {{publish_date}}',
                  'variations': [
                    {
                      'variation': 'vip',
                      'value': 'VIP published on {{publish_date}}',
                    },
                  ],
                },
              ],
              'placeholders': [
                {'name': 'publish_date', 'type': 'string'},
              ],
            },
            {
              'type': 'key',
              'key': 'plural_sample',
              'values': [
                {
                  'lang': 'en',
                  'value': '',
                  'message': {
                    'parts': [
                      {
                        'variant': {
                          'kind': 'plural',
                          'variable': 'count',
                          'forms': [
                            {
                              'selector': 'one',
                              'parts': [
                                {'text': 'one key'},
                              ],
                              'order': 1,
                            },
                            {
                              'selector': 'other',
                              'parts': [
                                {'text': 'many or none keys'},
                              ],
                              'order': 2,
                            },
                          ],
                        },
                      },
                    ],
                  },
                  'variations': [
                    {
                      'variation': 'vip',
                      'message': {
                        'parts': [
                          {
                            'variant': {
                              'kind': 'plural',
                              'variable': 'count',
                              'forms': [
                                {
                                  'selector': 'other',
                                  'parts': [
                                    {'text': 'Variant other'},
                                  ],
                                  'order': 1,
                                },
                                {
                                  'selector': 'one',
                                  'parts': [
                                    {'text': 'Variant one'},
                                  ],
                                  'order': 2,
                                },
                              ],
                            },
                          },
                        ],
                      },
                    },
                  ],
                },
              ],
              'placeholders': [
                {'name': 'count', 'type': 'int'},
              ],
            },
          ]),
          name: 'English',
          version: 1,
          minimumDeltaBaseVersion: 1,
          url: Uri.parse('https://cdn.example.com/en.bundle'),
        ),
        'es': ReRuneCachedLocaleBundle(
          data: jsonEncode([
            {
              'type': 'key',
              'key': 'welcome_title',
              'values': [
                {'lang': 'es', 'value': 'Bienvenidos a ReRune'},
              ],
            },
            {
              'type': 'key',
              'key': 'publish_date',
              'values': [
                {'lang': 'es', 'value': 'Lo publicamos el {{publish_date}}'},
              ],
              'placeholders': [
                {'name': 'publish_date', 'type': 'string'},
              ],
            },
          ]),
          name: 'Español',
          version: 1,
          minimumDeltaBaseVersion: 1,
          url: Uri.parse('https://cdn.example.com/es.bundle'),
        ),
      };

  ReRuneCachedManifest? cachedManifest;
  final Map<String, ReRuneCachedLocaleBundle> cachedBundles;
  final Map<String, String> settings = {};

  @override
  Future<String?> readSetting(String key) async => settings[key];

  @override
  Future<void> writeSetting(String key, String value) async {
    settings[key] = value;
  }

  @override
  Future<ReRuneCachedManifest?> readManifest() async => cachedManifest;

  @override
  Future<void> writeManifest(ReRuneCachedManifest manifest) async {
    cachedManifest = manifest;
  }

  @override
  Future<ReRuneCachedLocaleBundle?> readLocaleBundle(String localeKey) async {
    return cachedBundles[localeKey];
  }

  @override
  Future<void> writeLocaleBundle(
    String localeKey,
    ReRuneCachedLocaleBundle bundle,
  ) async {
    cachedBundles[localeKey] = bundle;
  }

  @override
  Future<void> deleteLocaleBundle(String localeKey) async {
    cachedBundles.remove(localeKey);
  }
}
