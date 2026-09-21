// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get welcome_badge => 'Demonstração da localização OTA';

  @override
  String get welcome_title => 'Reserve tempo para uma história.';

  @override
  String get welcome_subtitle => 'Menos rolagem. Mais encanto.';

  @override
  String get welcome_locale_label => 'Idioma de leitura';

  @override
  String get welcome_locale_value => 'Inglês';

  @override
  String get welcome_locale_system_default => 'Idioma do sistema';

  @override
  String get welcome_last_synced_label => 'Última sincronização';

  @override
  String get welcome_open_story_cta => 'Continuar a ler';

  @override
  String get welcome_refresh_state_idle => 'Puxe para atualizar';

  @override
  String get welcome_refresh_state_checking => 'A procurar novos textos…';

  @override
  String get welcome_refresh_state_downloading => 'A descarregar textos...';

  @override
  String get welcome_refresh_state_applying => 'A aplicar as traduções...';

  @override
  String get welcome_refresh_state_success =>
      'As suas histórias têm novas palavras.';

  @override
  String get story_title => 'O atlas silencioso';

  @override
  String get story_body_primary =>
      'Na manhã em que o rio desapareceu dos mapas, Ada levou um lápis, uma pera e a bússola do avô. Lá fora, a água continuava a correr. Ouvia-a da cozinha.';

  @override
  String get story_body_secondary =>
      'Caminhou até o caminho ser apenas um vestígio na erva. Na curva esperava um barqueiro com um caderno vazio. Esperava alguém que soubesse ouvir.';

  @override
  String get story_caption => 'Conteúdo de tradução em tempo real';

  @override
  String get story_refresh_cta => 'Atualizar textos';

  @override
  String publish_date(String publish_date) {
    return 'publicámos no dia $publish_date';
  }

  @override
  String plural_sample(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Não se sabe quantas chaves existem',
      many: 'Existem muitas chaves',
      one: 'Existe apenas uma chave',
    );
    return '$_temp0';
  }

  @override
  String get refresh_current => 'As suas histórias estão atualizadas.';

  @override
  String get refresh_error =>
      'Não foi possível atualizar. As suas histórias continuam aqui. Tente novamente.';

  @override
  String get nav_library => 'Biblioteca';

  @override
  String get nav_discover => 'Descobrir';

  @override
  String get nav_saved => 'Guardados';

  @override
  String get currently_reading => 'A ler agora';

  @override
  String get collection_issue => 'VOL. 01';

  @override
  String get next_chapter_shelf => 'A sua próxima pausa';

  @override
  String get see_all => 'Ver tudo';

  @override
  String story_by(String author) {
    return 'Uma história de $author';
  }

  @override
  String chapter_progress(int current, int total) {
    return 'Capítulo $current de $total';
  }

  @override
  String get story_finished => 'História concluída';

  @override
  String get save_story => 'Guardar história';

  @override
  String get remove_saved => 'Remover dos guardados';

  @override
  String get discover_title => 'Encontre o seu próximo mundo.';

  @override
  String get discover_subtitle => 'Pequenas histórias. Novos lugares.';

  @override
  String get saved_title => 'Guarde um pouco de encanto.';

  @override
  String get saved_subtitle => 'Vale a pena voltar às boas histórias.';

  @override
  String get saved_empty_title => 'Uma estante só sua';

  @override
  String get saved_empty_body =>
      'Toque no marcador de uma história para a guardar aqui.';

  @override
  String get explore_stories => 'Explorar histórias';

  @override
  String get filter_all => 'Todas as histórias';

  @override
  String get genre_wonder => 'Encanto';

  @override
  String get genre_adventure => 'Aventura';

  @override
  String get genre_nature => 'Natureza';

  @override
  String get reading_moment => 'UM MOMENTO ENTRE PÁGINAS';

  @override
  String get reading_quote =>
      'Algumas viagens começam com uma única página tranquila.';

  @override
  String get library_footer => 'Três pequenos mundos. Sem pressa.';

  @override
  String get reading_settings => 'Definições de leitura';

  @override
  String get settings_description =>
      'Experimente outra edição e atualize os textos das suas histórias.';

  @override
  String get translation_variant => 'Edição VIP';

  @override
  String get variant_save_error =>
      'A edição mudou, mas não foi possível guardá-la para a próxima vez.';

  @override
  String get staging_mode => 'Staging mode';

  @override
  String get staging_mode_description =>
      'Preview draft translations while project staging is enabled.';

  @override
  String get staging_mode_error => 'Staging mode could not be switched.';

  @override
  String get session_note =>
      'Os marcadores e o progresso ficam disponíveis durante esta sessão.';

  @override
  String get back_library => 'Voltar à biblioteca';

  @override
  String get next_chapter => 'Próximo capítulo';

  @override
  String get finish_story => 'Concluir história';

  @override
  String get read_again => 'Ler novamente';

  @override
  String get reader_end_title => 'Um pequeno mundo, bem explorado.';

  @override
  String get reader_end_body =>
      'Fique um momento com o final. Outra história espera na sua estante.';

  @override
  String get atlas_description =>
      'Uma cartógrafa segue um rio que desapareceu de todos os mapas.';

  @override
  String get atlas_chapter_one => 'O rio sem nome';

  @override
  String get atlas_chapter_two => 'O que o mapa recorda';

  @override
  String get atlas_body_three =>
      'O barqueiro pediu a Ada que desenhasse o som da água. Traçou linhas tortas. Surgiram a ponte onde a mãe cantava e o lugar onde perdera um sapato.';

  @override
  String get atlas_body_four =>
      'Ao anoitecer, o rio voltou ao atlas. Não estava exatamente no mesmo lugar, mas podia ser encontrado. Ada deixou a última página em branco. Ainda havia lugares por recordar.';

  @override
  String get lantern_title => 'A última lanterna';

  @override
  String get lantern_description =>
      'Uma pequena luz atravessa uma montanha antes da neve.';

  @override
  String get lantern_chapter_one => 'Uma luz na estação';

  @override
  String get lantern_chapter_two => 'O outro lado da noite';

  @override
  String get lantern_body_one =>
      'Todos os outonos, Leo acendia as lanternas do caminho de ferro da montanha. Nesse ano, uma ficou apagada. Encontrou-a na última estação, junto de uma carta para quem chegasse tão longe.';

  @override
  String get lantern_body_two =>
      'A carta continha um fósforo e o desenho de uma casa para lá da serra. Leo encheu a lanterna, apertou o casaco e partiu. A primeira neve caía entre as estrelas.';

  @override
  String get lantern_body_three =>
      'Chegou antes do amanhecer. Na janela havia um relógio de estação parado às sete. Uma mulher abriu com duas chávenas de chá. Mantivera a chaleira quente toda a noite.';

  @override
  String get lantern_body_four =>
      'Penduraram juntos a lanterna. No vale apareceu o primeiro comboio. O maquinista apitou e cem janelas refletiram a luz. A estação já não era o fim da linha.';

  @override
  String get garden_title => 'Um jardim para amanhã';

  @override
  String get garden_description =>
      'Um terraço esquecido torna-se um lugar para recomeçar.';

  @override
  String get garden_chapter_one => 'A semente no bolso';

  @override
  String get garden_chapter_two => 'Espaço para a chuva';

  @override
  String get garden_body_one =>
      'Ao mudar de casa, June encontrou uma semente num casaco emprestado. Ninguém sabia o que nasceria dali. Levou-a ao terraço numa chávena azul lascada.';

  @override
  String get garden_body_two =>
      'O terraço tinha três poças, uma cadeira partida e vista para as nuvens. June pôs terra na chávena. O vizinho trouxe uma colher. Era o menor jardim que conheciam.';

  @override
  String get garden_body_three =>
      'Durante seis dias nada aconteceu. Ao sétimo surgiu um rebento verde. Já havia doze chávenas no terraço, uma cadeira reparada e alguém que se lembrava de regar todas as manhãs.';

  @override
  String get garden_body_four =>
      'No verão, o girassol era mais alto do que June. Nunca souberam quem deixara a semente no casaco. No outono encheram de sementes todos os bolsos que encontraram.';
}
