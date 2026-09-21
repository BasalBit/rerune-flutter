// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get welcome_badge => 'Démo de localisation OTA';

  @override
  String get welcome_title => 'Prenez le temps de lire une histoire.';

  @override
  String get welcome_subtitle =>
      'Un peu moins de défilement. Un peu plus d’émerveillement.';

  @override
  String get welcome_locale_label => 'Langue de lecture';

  @override
  String get welcome_locale_value => 'Français';

  @override
  String get welcome_locale_system_default => 'Langue du système';

  @override
  String get welcome_last_synced_label => 'Dernière synchronisation';

  @override
  String get welcome_open_story_cta => 'Continuer la lecture';

  @override
  String get welcome_refresh_state_idle => 'Tirer pour actualiser';

  @override
  String get welcome_refresh_state_checking => 'Recherche de nouveaux mots…';

  @override
  String get welcome_refresh_state_downloading =>
      'Téléchargement des textes...';

  @override
  String get welcome_refresh_state_applying => 'Application des traductions...';

  @override
  String get welcome_refresh_state_success =>
      'Vos histoires ont de nouveaux mots.';

  @override
  String get story_title => 'L’atlas silencieux';

  @override
  String get story_body_primary =>
      'Le matin où la rivière disparut des cartes, Ada emporta un crayon, une poire et la boussole de son grand-père. Dehors, l’eau coulait toujours. Elle l’entendait depuis la fenêtre de la cuisine.';

  @override
  String get story_body_secondary =>
      'Elle marcha jusqu’à ce que la route devienne un sentier, puis que le sentier ne soit plus qu’une trace dans l’herbe. Au détour de la rivière se tenait un passeur avec un carnet vide. Il attendait quelqu’un qui sache écouter.';

  @override
  String get story_caption => 'Traductions en direct';

  @override
  String get story_refresh_cta => 'Actualiser les textes';

  @override
  String publish_date(String publish_date) {
    return 'Nous avons publié le $publish_date';
  }

  @override
  String plural_sample(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'On ne sait pas combien il y a de clés',
      many: 'Il y a beaucoup de clés',
      one: 'Il n’y a qu’une seule clé',
    );
    return '$_temp0';
  }

  @override
  String get refresh_current => 'Vos histoires sont à jour.';

  @override
  String get refresh_error =>
      'Impossible d’actualiser les textes. Vos histoires sont toujours là. Réessayez.';

  @override
  String get nav_library => 'Ma bibliothèque';

  @override
  String get nav_discover => 'Découvrir';

  @override
  String get nav_saved => 'Enregistrés';

  @override
  String get currently_reading => 'Lecture en cours';

  @override
  String get collection_issue => 'VOL. 01';

  @override
  String get next_chapter_shelf => 'Votre prochaine escapade';

  @override
  String get see_all => 'Tout voir';

  @override
  String story_by(String author) {
    return 'Une histoire de $author';
  }

  @override
  String chapter_progress(int current, int total) {
    return 'Chapitre $current sur $total';
  }

  @override
  String get story_finished => 'Histoire terminée';

  @override
  String get save_story => 'Enregistrer l’histoire';

  @override
  String get remove_saved => 'Retirer des favoris';

  @override
  String get discover_title => 'Trouvez votre prochain univers.';

  @override
  String get discover_subtitle => 'De petites histoires. De nouveaux horizons.';

  @override
  String get saved_title => 'Gardez une part de merveilleux.';

  @override
  String get saved_subtitle =>
      'Les belles histoires méritent qu’on y revienne.';

  @override
  String get saved_empty_title => 'Une étagère rien qu’à vous';

  @override
  String get saved_empty_body =>
      'Touchez le marque-page d’une histoire pour la retrouver ici.';

  @override
  String get explore_stories => 'Explorer les histoires';

  @override
  String get filter_all => 'Toutes les histoires';

  @override
  String get genre_wonder => 'Émerveillement';

  @override
  String get genre_adventure => 'Aventure';

  @override
  String get genre_nature => 'Nature';

  @override
  String get reading_moment => 'UN INSTANT ENTRE LES PAGES';

  @override
  String get reading_quote =>
      'Certains voyages commencent par une simple page lue dans le calme.';

  @override
  String get library_footer => 'Trois petits mondes. Prenez votre temps.';

  @override
  String get reading_settings => 'Paramètres de lecture';

  @override
  String get settings_description =>
      'Essayez une autre édition et actualisez les mots de vos histoires.';

  @override
  String get translation_variant => 'Édition VIP';

  @override
  String get variant_save_error =>
      'L’édition a changé, mais ce choix n’a pas pu être enregistré pour la prochaine fois.';

  @override
  String get staging_mode => 'Staging mode';

  @override
  String get staging_mode_description =>
      'Preview draft translations while project staging is enabled.';

  @override
  String get staging_mode_error => 'Staging mode could not be switched.';

  @override
  String get session_note =>
      'Vos favoris et votre progression de lecture sont conservés pendant cette session.';

  @override
  String get back_library => 'Retour à la bibliothèque';

  @override
  String get next_chapter => 'Chapitre suivant';

  @override
  String get finish_story => 'Terminer l’histoire';

  @override
  String get read_again => 'Relire';

  @override
  String get reader_end_title => 'Un petit monde que vous avez bien exploré.';

  @override
  String get reader_end_body =>
      'Savourez la fin encore un instant. Une autre histoire vous attendra sur votre étagère.';

  @override
  String get atlas_description =>
      'Une cartographe suit une rivière qui a disparu de toutes les cartes.';

  @override
  String get atlas_chapter_one => 'La rivière sans nom';

  @override
  String get atlas_chapter_two => 'Ce que la carte garde en mémoire';

  @override
  String get atlas_body_three =>
      'Le passeur demanda à Ada de dessiner le bruit de l’eau. Elle traça une ligne irrégulière, puis une autre. Bientôt, la page accueillit le pont où sa mère chantait et les eaux peu profondes où elle avait perdu une chaussure.';

  @override
  String get atlas_body_four =>
      'Le soir venu, la rivière était revenue dans l’atlas. Pas tout à fait à son ancienne place, mais assez près pour qu’on la retrouve. Ada laissa la dernière page blanche. Il restait des lieux dont elle devait encore se souvenir.';

  @override
  String get lantern_title => 'La dernière lanterne';

  @override
  String get lantern_description =>
      'Une petite lumière traverse une montagne avant les neiges de l’hiver.';

  @override
  String get lantern_chapter_one => 'Une lumière à la gare';

  @override
  String get lantern_chapter_two => 'De l’autre côté de la nuit';

  @override
  String get lantern_body_one =>
      'Chaque automne, Leo allumait les lanternes le long du chemin de fer de montagne. Cette année, l’une d’elles resta éteinte. Il la trouva à la dernière gare, près d’une lettre adressée simplement à qui viendrait aussi loin.';

  @override
  String get lantern_body_two =>
      'La lettre contenait une allumette et le dessin d’une maison au-delà de la crête. Leo remplit la lanterne, boutonna son manteau et quitta le quai. Au-dessus de lui, les premiers flocons passaient entre les étoiles.';

  @override
  String get lantern_body_three =>
      'Il atteignit la maison juste avant l’aube. Derrière la fenêtre se trouvait une vieille horloge de gare, arrêtée à sept heures. Une femme ouvrit la porte avec deux tasses de thé. Elle avait gardé la bouilloire au chaud toute la nuit.';

  @override
  String get lantern_body_four =>
      'Ils accrochèrent la lanterne dehors ensemble. En bas, dans la vallée, le premier train apparut au détour d’un virage. Son conducteur fit retentir le klaxon, et une centaine de fenêtres reflétèrent la petite lumière. La gare n’était plus le bout de la ligne.';

  @override
  String get garden_title => 'Un jardin pour demain';

  @override
  String get garden_description =>
      'Un toit oublié devient un lieu où tout peut recommencer.';

  @override
  String get garden_chapter_one => 'La graine dans la poche';

  @override
  String get garden_chapter_two => 'Une place pour la pluie';

  @override
  String get garden_body_one =>
      'Quand June emménagea dans l’immeuble, elle trouva une graine dans la poche d’un manteau emprunté. Personne ne savait ce qu’elle deviendrait. Elle la porta sur le toit dans une tasse bleue ébréchée.';

  @override
  String get garden_body_two =>
      'Sur le toit, il y avait trois flaques, une chaise cassée et une vue magnifique sur les nuages. June mit de la terre dans la tasse. Le voisin du dessous apporta une cuillère. C’était le plus petit jardin que l’un comme l’autre ait jamais vu.';

  @override
  String get garden_body_three =>
      'Pendant six jours, rien ne se passa. Le septième, une petite pousse verte apparut. Entre-temps, il y avait douze tasses sur le toit, une chaise réparée et quelqu’un qui pensait à arroser chaque matin.';

  @override
  String get garden_body_four =>
      'L’été venu, la graine était devenue un tournesol, plus grand que June. Ils ne découvrirent jamais qui l’avait laissée dans le manteau. Quand l’automne arriva, ils remplirent de graines toutes les poches qu’ils purent trouver.';
}
