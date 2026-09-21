// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get welcome_badge => 'Dimostrazione della localizzazione OTA';

  @override
  String get welcome_title => 'Trova il tempo per una storia.';

  @override
  String get welcome_subtitle => 'Meno scorrere. Più meraviglia.';

  @override
  String get welcome_locale_label => 'Lingua di lettura';

  @override
  String get welcome_locale_value => 'Inglese';

  @override
  String get welcome_locale_system_default => 'Lingua di sistema';

  @override
  String get welcome_last_synced_label => 'Ultima sincronizzazione';

  @override
  String get welcome_open_story_cta => 'Continua a leggere';

  @override
  String get welcome_refresh_state_idle =>
      'Scorri verso il basso per aggiornare';

  @override
  String get welcome_refresh_state_checking => 'Ricerca di nuovi testi…';

  @override
  String get welcome_refresh_state_downloading =>
      'Scaricamento dei testi in corso...';

  @override
  String get welcome_refresh_state_applying =>
      'Applicazione delle traduzioni...';

  @override
  String get welcome_refresh_state_success =>
      'Le tue storie hanno nuove parole.';

  @override
  String get story_title => 'L\'atlante silenzioso';

  @override
  String get story_body_primary =>
      'La mattina in cui il fiume scomparve dalle mappe, Ada mise in borsa una matita, una pera e la bussola del nonno. Fuori, l\'acqua scorreva ancora. La sentiva dalla cucina.';

  @override
  String get story_body_secondary =>
      'Camminò finché il sentiero divenne una traccia nell\'erba. Alla curva aspettava un traghettatore con un quaderno vuoto. Cercava qualcuno che sapesse ascoltare.';

  @override
  String get story_caption => 'Contenuti di traduzione in tempo reale';

  @override
  String get story_refresh_cta => 'Aggiorna i testi';

  @override
  String publish_date(String publish_date) {
    return 'abbiamo pubblicato il $publish_date';
  }

  @override
  String plural_sample(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Non si sa quante chiavi ci siano',
      many: 'Ci sono molte chiavi',
      one: 'C’è una sola chiave',
    );
    return '$_temp0';
  }

  @override
  String get refresh_current => 'Le tue storie sono aggiornate.';

  @override
  String get refresh_error =>
      'Impossibile aggiornare. Le tue storie sono ancora qui. Riprova.';

  @override
  String get nav_library => 'Biblioteca';

  @override
  String get nav_discover => 'Scopri';

  @override
  String get nav_saved => 'Salvati';

  @override
  String get currently_reading => 'In lettura';

  @override
  String get collection_issue => 'VOL. 01';

  @override
  String get next_chapter_shelf => 'La tua prossima pausa';

  @override
  String get see_all => 'Vedi tutto';

  @override
  String story_by(String author) {
    return 'Una storia di $author';
  }

  @override
  String chapter_progress(int current, int total) {
    return 'Capitolo $current di $total';
  }

  @override
  String get story_finished => 'Storia completata';

  @override
  String get save_story => 'Salva storia';

  @override
  String get remove_saved => 'Rimuovi dai salvati';

  @override
  String get discover_title => 'Trova il tuo prossimo mondo.';

  @override
  String get discover_subtitle => 'Piccole storie. Nuovi luoghi.';

  @override
  String get saved_title => 'Conserva la meraviglia.';

  @override
  String get saved_subtitle => 'Le belle storie meritano un ritorno.';

  @override
  String get saved_empty_title => 'Uno scaffale tutto tuo';

  @override
  String get saved_empty_body =>
      'Tocca il segnalibro di una storia per conservarla qui.';

  @override
  String get explore_stories => 'Esplora le storie';

  @override
  String get filter_all => 'Tutte le storie';

  @override
  String get genre_wonder => 'Meraviglia';

  @override
  String get genre_adventure => 'Avventura';

  @override
  String get genre_nature => 'Natura';

  @override
  String get reading_moment => 'UN MOMENTO TRA LE PAGINE';

  @override
  String get reading_quote =>
      'Certi viaggi iniziano con una sola pagina silenziosa.';

  @override
  String get library_footer => 'Tre piccoli mondi. Prenditi il tuo tempo.';

  @override
  String get reading_settings => 'Impostazioni di lettura';

  @override
  String get settings_description =>
      'Prova un\'altra edizione e aggiorna i testi delle tue storie.';

  @override
  String get translation_variant => 'Edizione VIP';

  @override
  String get variant_save_error =>
      'L\'edizione è cambiata, ma non è stato possibile salvarla.';

  @override
  String get staging_mode => 'Staging mode';

  @override
  String get staging_mode_description =>
      'Preview draft translations while project staging is enabled.';

  @override
  String get staging_mode_error => 'Staging mode could not be switched.';

  @override
  String get session_note =>
      'Segnalibri e progressi restano disponibili durante questa sessione.';

  @override
  String get back_library => 'Torna alla biblioteca';

  @override
  String get next_chapter => 'Prossimo capitolo';

  @override
  String get finish_story => 'Concludi la storia';

  @override
  String get read_again => 'Leggi di nuovo';

  @override
  String get reader_end_title => 'Un piccolo mondo, ben esplorato.';

  @override
  String get reader_end_body =>
      'Fermati un momento sul finale. Un\'altra storia ti aspetta sullo scaffale.';

  @override
  String get atlas_description =>
      'Una cartografa segue un fiume scomparso da ogni mappa.';

  @override
  String get atlas_chapter_one => 'Il fiume senza nome';

  @override
  String get atlas_chapter_two => 'Ciò che la mappa ricorda';

  @override
  String get atlas_body_three =>
      'Il traghettatore chiese ad Ada di disegnare il suono dell\'acqua. Tracciò linee storte. Apparvero il ponte dove cantava sua madre e il punto in cui aveva perso una scarpa.';

  @override
  String get atlas_body_four =>
      'A sera il fiume tornò nell\'atlante. Non proprio nello stesso punto, ma abbastanza vicino. Ada lasciò vuota l\'ultima pagina. C\'erano ancora luoghi da ricordare.';

  @override
  String get lantern_title => 'L\'ultima lanterna';

  @override
  String get lantern_description =>
      'Una piccola luce attraversa una montagna prima della neve.';

  @override
  String get lantern_chapter_one => 'Una luce alla stazione';

  @override
  String get lantern_chapter_two => 'L\'altro lato della notte';

  @override
  String get lantern_body_one =>
      'Ogni autunno Leo accendeva le lanterne della ferrovia di montagna. Quell\'anno una rimase spenta. La trovò all\'ultima stazione, accanto a una lettera per chi fosse arrivato fin lì.';

  @override
  String get lantern_body_two =>
      'La lettera conteneva un fiammifero e il disegno di una casa oltre la cresta. Leo riempì la lanterna, chiuse il cappotto e partì. La prima neve cadeva tra le stelle.';

  @override
  String get lantern_body_three =>
      'Arrivò prima dell\'alba. Alla finestra c\'era un orologio ferroviario fermo alle sette. Una donna aprì con due tazze di tè. Aveva tenuto caldo il bollitore tutta la notte.';

  @override
  String get lantern_body_four =>
      'Appesero insieme la lanterna. A valle passò il primo treno. Il macchinista suonò e cento finestre riflessero la luce. La stazione non era più la fine della linea.';

  @override
  String get garden_title => 'Un giardino per domani';

  @override
  String get garden_description =>
      'Un tetto dimenticato diventa un luogo per ricominciare.';

  @override
  String get garden_chapter_one => 'Il seme in tasca';

  @override
  String get garden_chapter_two => 'Spazio per la pioggia';

  @override
  String get garden_body_one =>
      'Quando si trasferì, June trovò un seme in un cappotto preso in prestito. Nessuno sapeva cosa sarebbe diventato. Lo portò sul tetto in una tazza blu scheggiata.';

  @override
  String get garden_body_two =>
      'Sul tetto c\'erano tre pozzanghere, una sedia rotta e una vista sulle nuvole. June aggiunse terra alla tazza. Il vicino portò un cucchiaio. Era il giardino più piccolo che conoscessero.';

  @override
  String get garden_body_three =>
      'Per sei giorni non accadde nulla. Il settimo spuntò un germoglio verde. Sul tetto c\'erano ormai dodici tazze, una sedia riparata e qualcuno che le annaffiava ogni mattina.';

  @override
  String get garden_body_four =>
      'In estate il girasole era più alto di June. Non seppero mai chi avesse lasciato il seme nel cappotto. In autunno riempirono di semi tutte le tasche che trovarono.';
}
