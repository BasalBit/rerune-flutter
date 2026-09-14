// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get welcome_badge =>
      'Demostración de la actualización OTA de Localization';

  @override
  String get welcome_title => 'Haz tiempo para una historia.';

  @override
  String get welcome_subtitle => 'Menos deslizar. Más asombro.';

  @override
  String get welcome_locale_label => 'Idioma de lectura';

  @override
  String get welcome_locale_value => 'Inglés';

  @override
  String get welcome_locale_system_default => 'Idioma del sistema';

  @override
  String get welcome_last_synced_label => 'Última sincronización';

  @override
  String get welcome_open_story_cta => 'Seguir leyendo';

  @override
  String get welcome_refresh_state_idle =>
      'Desliza hacia abajo para actualizar';

  @override
  String get welcome_refresh_state_checking => 'Buscando nuevos textos…';

  @override
  String get welcome_refresh_state_downloading => 'Descargando textos...';

  @override
  String get welcome_refresh_state_applying => 'Aplicando las traducciones...';

  @override
  String get welcome_refresh_state_success =>
      'Tus historias tienen nuevas palabras.';

  @override
  String get story_title => 'El atlas silencioso';

  @override
  String get story_body_primary =>
      'La mañana en que el río desapareció de los mapas, Ada guardó un lápiz, una pera y la brújula de su abuelo. Afuera, el agua seguía corriendo. La oía desde la cocina.';

  @override
  String get story_body_secondary =>
      'Caminó hasta que el camino fue apenas una huella en la hierba. En la curva esperaba un barquero con un cuaderno vacío. Esperaba a alguien que supiera escuchar.';

  @override
  String get story_caption => 'Contenido de traducción en directo';

  @override
  String get story_refresh_cta => 'Actualizar textos';

  @override
  String publish_date(String publish_date) {
    return 'Lo publicamos el $publish_date';
  }

  @override
  String plural_sample(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'No se sabe cuántas claves hay',
      many: 'Hay muchas claves',
      one: 'Solo hay una clave',
    );
    return '$_temp0';
  }

  @override
  String get refresh_current => 'Tus historias están al día.';

  @override
  String get refresh_error =>
      'No se pudo actualizar. Tus historias siguen aquí. Inténtalo de nuevo.';

  @override
  String get nav_library => 'Biblioteca';

  @override
  String get nav_discover => 'Descubrir';

  @override
  String get nav_saved => 'Guardados';

  @override
  String get currently_reading => 'Leyendo ahora';

  @override
  String get collection_issue => 'VOL. 01';

  @override
  String get next_chapter_shelf => 'Tu próxima escapada';

  @override
  String get see_all => 'Ver todo';

  @override
  String story_by(String author) {
    return 'Una historia de $author';
  }

  @override
  String chapter_progress(int current, int total) {
    return 'Capítulo $current de $total';
  }

  @override
  String get story_finished => 'Historia terminada';

  @override
  String get save_story => 'Guardar historia';

  @override
  String get remove_saved => 'Quitar de guardados';

  @override
  String get discover_title => 'Encuentra tu próximo mundo.';

  @override
  String get discover_subtitle => 'Pequeñas historias. Nuevos lugares.';

  @override
  String get saved_title => 'Guarda un poco de asombro.';

  @override
  String get saved_subtitle => 'Las buenas historias merecen otra visita.';

  @override
  String get saved_empty_title => 'Tu propia estantería';

  @override
  String get saved_empty_body =>
      'Toca el marcador de una historia para guardarla aquí.';

  @override
  String get explore_stories => 'Explorar historias';

  @override
  String get filter_all => 'Todas las historias';

  @override
  String get genre_wonder => 'Asombro';

  @override
  String get genre_adventure => 'Aventura';

  @override
  String get genre_nature => 'Naturaleza';

  @override
  String get reading_moment => 'UN MOMENTO ENTRE PÁGINAS';

  @override
  String get reading_quote =>
      'Algunos viajes empiezan con una sola página tranquila.';

  @override
  String get library_footer => 'Tres pequeños mundos. Tómate tu tiempo.';

  @override
  String get reading_settings => 'Ajustes de lectura';

  @override
  String get settings_description =>
      'Prueba otra edición y actualiza los textos de tus historias.';

  @override
  String get translation_variant => 'Edición VIP';

  @override
  String get variant_save_error =>
      'La edición cambió, pero no se pudo guardar para la próxima vez.';

  @override
  String get session_note =>
      'Los marcadores y el progreso se conservan durante esta sesión.';

  @override
  String get back_library => 'Volver a la biblioteca';

  @override
  String get next_chapter => 'Siguiente capítulo';

  @override
  String get finish_story => 'Terminar historia';

  @override
  String get read_again => 'Volver a leer';

  @override
  String get reader_end_title => 'Un pequeño mundo, bien recorrido.';

  @override
  String get reader_end_body =>
      'Quédate un momento con el final. Otra historia te espera en tu estantería.';

  @override
  String get atlas_description =>
      'Una cartógrafa sigue un río que desapareció de todos los mapas.';

  @override
  String get atlas_chapter_one => 'El río sin nombre';

  @override
  String get atlas_chapter_two => 'Lo que recuerda el mapa';

  @override
  String get atlas_body_three =>
      'El barquero pidió a Ada que dibujara el sonido del agua. Trazó líneas torcidas. Pronto apareció el puente donde cantaba su madre y el lugar donde había perdido un zapato.';

  @override
  String get atlas_body_four =>
      'Al anochecer, el río volvió al atlas. No estaba exactamente en el mismo sitio, pero se podía encontrar. Ada dejó la última página en blanco. Aún había lugares por recordar.';

  @override
  String get lantern_title => 'El último farol';

  @override
  String get lantern_description =>
      'Una pequeña luz cruza una montaña antes de la nieve.';

  @override
  String get lantern_chapter_one => 'Una luz en la estación';

  @override
  String get lantern_chapter_two => 'El otro lado de la noche';

  @override
  String get lantern_body_one =>
      'Cada otoño, Leo encendía los faroles del ferrocarril de montaña. Ese año uno quedó apagado. Lo encontró en la última estación, junto a una carta para quien llegara tan lejos.';

  @override
  String get lantern_body_two =>
      'La carta contenía una cerilla y el dibujo de una casa tras la cresta. Leo llenó el farol, se abrochó el abrigo y partió. La primera nieve caía entre las estrellas.';

  @override
  String get lantern_body_three =>
      'Llegó antes del amanecer. En la ventana había un reloj de estación parado a las siete. Una mujer abrió con dos tazas de té. Había mantenido caliente la tetera toda la noche.';

  @override
  String get lantern_body_four =>
      'Colgaron juntos el farol. En el valle apareció el primer tren. El maquinista hizo sonar la bocina y cien ventanas reflejaron la luz. La estación ya no era el final de la línea.';

  @override
  String get garden_title => 'Un jardín para mañana';

  @override
  String get garden_description =>
      'Una azotea olvidada se convierte en un lugar para empezar de nuevo.';

  @override
  String get garden_chapter_one => 'La semilla en el bolsillo';

  @override
  String get garden_chapter_two => 'Espacio para la lluvia';

  @override
  String get garden_body_one =>
      'Al mudarse, June encontró una semilla en un abrigo prestado. Nadie sabía qué sería. La llevó a la azotea en una taza azul desportillada.';

  @override
  String get garden_body_two =>
      'La azotea tenía tres charcos, una silla rota y vistas a las nubes. June llenó la taza de tierra. El vecino trajo una cuchara. Era el jardín más pequeño que conocían.';

  @override
  String get garden_body_three =>
      'Durante seis días no pasó nada. Al séptimo apareció un brote verde. Ya había doce tazas en la azotea, una silla reparada y alguien que recordaba regarlas cada mañana.';

  @override
  String get garden_body_four =>
      'En verano, el girasol era más alto que June. Nunca supieron quién dejó la semilla en el abrigo. En otoño llenaron de semillas todos los bolsillos que encontraron.';
}
