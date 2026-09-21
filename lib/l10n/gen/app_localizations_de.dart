// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get welcome_badge => 'Geschichten mit ReRune';

  @override
  String get welcome_title => 'Zeit für eine Geschichte.';

  @override
  String get welcome_subtitle => 'Weniger scrollen. Mehr staunen.';

  @override
  String get welcome_locale_label => 'Lesesprache';

  @override
  String get welcome_locale_value => 'Deutsch';

  @override
  String get welcome_locale_system_default => 'Systemsprache';

  @override
  String get welcome_last_synced_label => 'Zuletzt aktualisiert';

  @override
  String get welcome_open_story_cta => 'Weiterlesen';

  @override
  String get welcome_refresh_state_idle => 'Zum Aktualisieren ziehen';

  @override
  String get welcome_refresh_state_checking => 'Neue Texte werden gesucht…';

  @override
  String get welcome_refresh_state_downloading => 'Texte werden geladen…';

  @override
  String get welcome_refresh_state_applying => 'Texte werden angewendet…';

  @override
  String get welcome_refresh_state_success =>
      'Deine Geschichten haben neue Worte.';

  @override
  String get story_title => 'Der stille Atlas';

  @override
  String get story_body_primary =>
      'Als der Fluss von den Karten verschwand, packte Ada einen Bleistift, eine Birne und den Kompass ihres Großvaters ein. Draußen floss das Wasser noch immer. Sie hörte es durch das Küchenfenster.';

  @override
  String get story_body_secondary =>
      'Sie ging, bis die Straße zum Pfad wurde und der Pfad nur noch eine Spur im Gras war. An der Biegung wartete ein Fährmann mit einem leeren Heft auf jemanden, der zuhören konnte.';

  @override
  String get story_caption => 'Geschichten für eine kleine Auszeit';

  @override
  String get story_refresh_cta => 'Texte aktualisieren';

  @override
  String publish_date(String publish_date) {
    return 'Veröffentlicht am $publish_date';
  }

  @override
  String plural_sample(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Schlüssel',
      one: 'Ein Schlüssel',
    );
    return '$_temp0';
  }

  @override
  String get refresh_current => 'Deine Geschichten sind aktuell.';

  @override
  String get refresh_error =>
      'Aktualisierung fehlgeschlagen. Deine Geschichten sind noch da. Versuche es erneut.';

  @override
  String get nav_library => 'Bibliothek';

  @override
  String get nav_discover => 'Entdecken';

  @override
  String get nav_saved => 'Gespeichert';

  @override
  String get currently_reading => 'Gerade gelesen';

  @override
  String get collection_issue => 'BAND 01';

  @override
  String get next_chapter_shelf => 'Deine nächste Auszeit';

  @override
  String get see_all => 'Alle ansehen';

  @override
  String story_by(String author) {
    return 'Eine Geschichte von $author';
  }

  @override
  String chapter_progress(int current, int total) {
    return 'Kapitel $current von $total';
  }

  @override
  String get story_finished => 'Geschichte beendet';

  @override
  String get save_story => 'Geschichte speichern';

  @override
  String get remove_saved => 'Aus Sammlung entfernen';

  @override
  String get discover_title => 'Finde deine nächste Welt.';

  @override
  String get discover_subtitle => 'Kleine Geschichten. Neue Orte.';

  @override
  String get saved_title => 'Bewahre das Staunen.';

  @override
  String get saved_subtitle => 'Zu guten Geschichten kehrt man zurück.';

  @override
  String get saved_empty_title => 'Dein eigenes Bücherregal';

  @override
  String get saved_empty_body =>
      'Tippe auf das Lesezeichen einer Geschichte, um sie hier zu sammeln.';

  @override
  String get explore_stories => 'Geschichten entdecken';

  @override
  String get filter_all => 'Alle Geschichten';

  @override
  String get genre_wonder => 'Staunen';

  @override
  String get genre_adventure => 'Abenteuer';

  @override
  String get genre_nature => 'Natur';

  @override
  String get reading_moment => 'EIN MOMENT ZWISCHEN DEN SEITEN';

  @override
  String get reading_quote =>
      'Manche Reisen beginnen mit einer einzigen stillen Seite.';

  @override
  String get library_footer => 'Drei kleine Welten. Lass dir Zeit.';

  @override
  String get reading_settings => 'Leseeinstellungen';

  @override
  String get settings_description =>
      'Probiere eine andere Ausgabe und aktualisiere die Texte deiner Geschichten.';

  @override
  String get translation_variant => 'VIP-Ausgabe';

  @override
  String get variant_save_error =>
      'Die Ausgabe wurde geändert, konnte aber nicht gespeichert werden.';

  @override
  String get staging_mode => 'Staging mode';

  @override
  String get staging_mode_description =>
      'Preview draft translations while project staging is enabled.';

  @override
  String get staging_mode_error => 'Staging mode could not be switched.';

  @override
  String get session_note =>
      'Lesezeichen und Lesefortschritt bleiben während dieser Sitzung erhalten.';

  @override
  String get back_library => 'Zurück zur Bibliothek';

  @override
  String get next_chapter => 'Nächstes Kapitel';

  @override
  String get finish_story => 'Geschichte abschließen';

  @override
  String get read_again => 'Erneut lesen';

  @override
  String get reader_end_title => 'Eine kleine Welt, gut bereist.';

  @override
  String get reader_end_body =>
      'Bleib einen Moment beim Ende. Eine weitere Geschichte wartet in deiner Bibliothek.';

  @override
  String get atlas_description =>
      'Eine Kartografin folgt einem Fluss, der auf keiner Karte mehr steht.';

  @override
  String get atlas_chapter_one => 'Der Fluss ohne Namen';

  @override
  String get atlas_chapter_two => 'Was die Karte bewahrt';

  @override
  String get atlas_body_three =>
      'Der Fährmann bat Ada, das Wassergeräusch zu zeichnen. Sie zog eine krumme Linie, dann noch eine. Bald zeigte die Seite die Brücke, auf der ihre Mutter sang, und die Furt, in der sie einen Schuh verloren hatte.';

  @override
  String get atlas_body_four =>
      'Am Abend war der Fluss in den Atlas zurückgekehrt. Nicht ganz an dieselbe Stelle, aber nah genug. Ada ließ die letzte Seite leer. Es gab Orte, an die sie sich noch erinnern musste.';

  @override
  String get lantern_title => 'Die letzte Laterne';

  @override
  String get lantern_description =>
      'Ein kleines Licht überquert einen Berg vor dem ersten Schnee.';

  @override
  String get lantern_chapter_one => 'Ein Licht am Bahnhof';

  @override
  String get lantern_chapter_two => 'Die andere Seite der Nacht';

  @override
  String get lantern_body_one =>
      'Jeden Herbst entzündete Leo die Laternen der Bergbahn. Dieses Jahr blieb eine dunkel. Am letzten Bahnhof fand er sie neben einem Brief an denjenigen, der so weit kommt.';

  @override
  String get lantern_body_two =>
      'Im Brief lagen ein Streichholz und die Zeichnung eines Hauses hinter dem Grat. Leo füllte die Laterne, schloss seinen Mantel und ging los. Über ihm fiel der erste Schnee zwischen den Sternen.';

  @override
  String get lantern_body_three =>
      'Kurz vor Tagesanbruch erreichte er das Haus. Im Fenster stand eine alte Bahnhofsuhr, auf sieben stehen geblieben. Eine Frau öffnete mit zwei Tassen Tee. Sie hatte den Kessel die ganze Nacht warm gehalten.';

  @override
  String get lantern_body_four =>
      'Gemeinsam hängten sie die Laterne auf. Im Tal bog der erste Zug um die Kurve. Der Fahrer hupte, und hundert Fenster spiegelten das kleine Licht. Der Bahnhof war nicht länger das Ende der Strecke.';

  @override
  String get garden_title => 'Ein Garten für morgen';

  @override
  String get garden_description =>
      'Ein vergessenes Dach wird zum Ort für einen Neuanfang.';

  @override
  String get garden_chapter_one => 'Der Samen in der Tasche';

  @override
  String get garden_chapter_two => 'Platz für den Regen';

  @override
  String get garden_body_one =>
      'Als June einzog, fand sie einen Samen in einer geliehenen Manteltasche. Niemand wusste, was daraus wachsen würde. Sie trug ihn in einer blauen Tasse mit Sprung auf das Dach.';

  @override
  String get garden_body_two =>
      'Auf dem Dach gab es drei Pfützen, einen kaputten Stuhl und freien Blick auf die Wolken. June füllte Erde in die Tasse. Der Nachbar brachte einen Löffel. Es war ihr bisher kleinster Garten.';

  @override
  String get garden_body_three =>
      'Sechs Tage geschah nichts. Am siebten zeigte sich ein grüner Trieb. Inzwischen standen zwölf Tassen auf dem Dach, der Stuhl war repariert, und jeden Morgen dachte jemand ans Gießen.';

  @override
  String get garden_body_four =>
      'Im Sommer war die Sonnenblume größer als June. Sie erfuhren nie, wer den Samen im Mantel gelassen hatte. Im Herbst füllten sie jede Tasche, die sie fanden, mit Samen.';
}
