// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get welcome_badge => 'Demonstrim i lokalizimit OTA';

  @override
  String get welcome_title => 'Gjej kohë për një tregim.';

  @override
  String get welcome_subtitle =>
      'Pak më pak lëvizje në ekran. Pak më shumë mrekulli.';

  @override
  String get welcome_locale_label => 'Gjuha e leximit';

  @override
  String get welcome_locale_value => 'Shqip';

  @override
  String get welcome_locale_system_default => 'Gjuha e sistemit';

  @override
  String get welcome_last_synced_label => 'Sinkronizimi i fundit';

  @override
  String get welcome_open_story_cta => 'Vazhdo leximin';

  @override
  String get welcome_refresh_state_idle => 'Tërhiq për të rifreskuar';

  @override
  String get welcome_refresh_state_checking => 'Po kërkohen fjalë të reja…';

  @override
  String get welcome_refresh_state_downloading => 'Po shkarkohen tekstet...';

  @override
  String get welcome_refresh_state_applying => 'Po zbatohen përkthimet...';

  @override
  String get welcome_refresh_state_success =>
      'Tregimet e tua kanë fjalë të reja.';

  @override
  String get story_title => 'Atlasi i heshtur';

  @override
  String get story_body_primary =>
      'Mëngjesin kur lumi u zhduk nga hartat, Ada mori me vete një laps, një dardhë dhe busullën e gjyshit. Jashtë, uji vazhdonte të rridhte. Ajo e dëgjonte nga dritarja e kuzhinës.';

  @override
  String get story_body_secondary =>
      'Ajo eci derisa rruga u bë shteg dhe shtegu mbeti vetëm një gjurmë e lehtë në bar. Te kthesa qëndronte një varkëtar me një fletore bosh. Ai po priste dikë që dinte të dëgjonte.';

  @override
  String get story_caption => 'Përkthime në kohë reale';

  @override
  String get story_refresh_cta => 'Rifresko tekstet';

  @override
  String publish_date(String publish_date) {
    return 'E publikuam më $publish_date';
  }

  @override
  String plural_sample(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nuk dihet sa çelësa ka',
      many: 'Ka shumë çelësa',
      one: 'Ka vetëm një çelës',
    );
    return '$_temp0';
  }

  @override
  String get refresh_current => 'Tregimet e tua janë të përditësuara.';

  @override
  String get refresh_error =>
      'Rifreskimi dështoi. Tregimet e tua janë ende këtu. Provo përsëri.';

  @override
  String get nav_library => 'Biblioteka ime';

  @override
  String get nav_discover => 'Zbulo';

  @override
  String get nav_saved => 'Të ruajtura';

  @override
  String get currently_reading => 'Duke lexuar';

  @override
  String get collection_issue => 'VËLL. 01';

  @override
  String get next_chapter_shelf => 'Udhëtimi yt i radhës';

  @override
  String get see_all => 'Shiko të gjitha';

  @override
  String story_by(String author) {
    return 'Një tregim nga $author';
  }

  @override
  String chapter_progress(int current, int total) {
    return 'Kapitulli $current nga $total';
  }

  @override
  String get story_finished => 'Tregimi përfundoi';

  @override
  String get save_story => 'Ruaj tregimin';

  @override
  String get remove_saved => 'Hiq nga të ruajturat';

  @override
  String get discover_title => 'Gjej botën tënde të radhës.';

  @override
  String get discover_subtitle =>
      'Tregime të shkurtra. Vende të reja për t’u zbuluar.';

  @override
  String get saved_title => 'Ruaj pak mrekulli.';

  @override
  String get saved_subtitle => 'Tregimet e mira ia vlen t’i lexosh sërish.';

  @override
  String get saved_empty_title => 'Një raft vetëm për ty';

  @override
  String get saved_empty_body =>
      'Prek shenjuesin e një tregimi për ta ruajtur këtu.';

  @override
  String get explore_stories => 'Zbulo tregime';

  @override
  String get filter_all => 'Të gjitha tregimet';

  @override
  String get genre_wonder => 'Mrekulli';

  @override
  String get genre_adventure => 'Aventurë';

  @override
  String get genre_nature => 'Natyrë';

  @override
  String get reading_moment => 'NJË ÇAST MES FAQEVE';

  @override
  String get reading_quote =>
      'Disa udhëtime nisin me një faqe të vetme, të lexuar në qetësi.';

  @override
  String get library_footer => 'Tri botë të vogla. Lexo pa nxitim.';

  @override
  String get reading_settings => 'Cilësimet e leximit';

  @override
  String get settings_description =>
      'Provo një botim tjetër dhe rifresko fjalët e tregimeve të tua.';

  @override
  String get translation_variant => 'Botimi VIP';

  @override
  String get variant_save_error =>
      'Botimi ndryshoi, por kjo zgjedhje nuk u ruajt për herën tjetër.';

  @override
  String get session_note =>
      'Shenjuesit dhe ecuria e leximit ruhen gjatë këtij sesioni të aplikacionit.';

  @override
  String get back_library => 'Kthehu në bibliotekë';

  @override
  String get next_chapter => 'Kapitulli tjetër';

  @override
  String get finish_story => 'Përfundo tregimin';

  @override
  String get read_again => 'Lexo përsëri';

  @override
  String get reader_end_title => 'Një botë e vogël, e përshkuar e gjitha.';

  @override
  String get reader_end_body =>
      'Qëndro edhe pak me fundin e tregimit. Një tregim tjetër do të të presë në raft.';

  @override
  String get atlas_description =>
      'Një hartografe ndjek një lumë që është zhdukur nga çdo hartë.';

  @override
  String get atlas_chapter_one => 'Lumi pa emër';

  @override
  String get atlas_chapter_two => 'Çfarë kujton harta';

  @override
  String get atlas_body_three =>
      'Varkëtari i kërkoi Adës të vizatonte tingullin e ujit. Ajo bëri një vijë të shtrembër, pastaj një tjetër. Shpejt, në faqe u shfaqën ura ku këndonte e ëma dhe ujërat e cekëta ku kishte humbur një këpucë.';

  @override
  String get atlas_body_four =>
      'Në mbrëmje, lumi ishte kthyer në atlas. Jo tamam aty ku kishte qenë, por mjaft afër sa të gjendej. Ada e la faqen e fundit bosh. Kishte ende vende që duhej t’i kujtonte.';

  @override
  String get lantern_title => 'Feneri i fundit';

  @override
  String get lantern_description =>
      'Një dritë e vogël kapërcen një mal para dëborës së dimrit.';

  @override
  String get lantern_chapter_one => 'Një dritë në stacion';

  @override
  String get lantern_chapter_two => 'Ana tjetër e natës';

  @override
  String get lantern_body_one =>
      'Çdo vjeshtë, Leo ndizte fenerët përgjatë hekurudhës malore. Këtë vit, njëri mbeti i fikur. Ai e gjeti në stacionin e fundit, pranë një letre drejtuar thjesht kujtdo që mbërrin kaq larg.';

  @override
  String get lantern_body_two =>
      'Brenda letrës kishte një shkrepëse dhe vizatimin e një shtëpie përtej kreshtës. Leo mbushi fenerin, mbërtheu pallton dhe zbriti nga peroni. Mbi të, flokët e parë të dëborës lëviznin mes yjeve.';

  @override
  String get lantern_body_three =>
      'Ai arriti te shtëpia pak para agimit. Në dritaren e saj rrinte një orë e vjetër hekurudhe, e ndalur në shtatë. Një grua hapi derën me dy filxhanë çaji. Ajo e kishte mbajtur çajnikun të ngrohtë gjithë natën.';

  @override
  String get lantern_body_four =>
      'Ata e varën fenerin jashtë së bashku. Poshtë në luginë, treni i parë doli nga kthesa. Makinisti i ra borisë dhe njëqind dritare pasqyruan dritën e vogël. Stacioni nuk ishte më fundi i linjës.';

  @override
  String get garden_title => 'Një kopsht për të nesërmen';

  @override
  String get garden_description =>
      'Një çati e harruar bëhet vendi ku gjërat mund të nisin sërish.';

  @override
  String get garden_chapter_one => 'Fara në xhep';

  @override
  String get garden_chapter_two => 'Vend për shiun';

  @override
  String get garden_body_one =>
      'Kur June u vendos në ndërtesë, gjeti një farë në xhepin e një palltoje të marrë hua. Askush nuk e dinte çfarë do të bëhej ajo. E çoi në çati, në një filxhan blu të ciflosur.';

  @override
  String get garden_body_two =>
      'Në çati kishte tri pellgje, një karrige të thyer dhe një pamje të mrekullueshme të reve. June hodhi dhe në filxhan. Fqinji i katit poshtë solli një lugë. Ishte kopshti më i vogël që kishte parë ndonjëri prej tyre.';

  @override
  String get garden_body_three =>
      'Për gjashtë ditë nuk ndodhi asgjë. Ditën e shtatë u shfaq një filiz i gjelbër, pak i përkulur. Deri atëherë, në çati kishte dymbëdhjetë filxhanë, një karrige të riparuar dhe dikë që kujtohej t’i ujiste çdo mëngjes.';

  @override
  String get garden_body_four =>
      'Kur erdhi vera, fara ishte bërë një luledielli, më i gjatë se June. Ata nuk e zbuluan kurrë kush e kishte lënë në pallto. Kur erdhi vjeshta, mbushën me fara çdo xhep që mundën të gjenin.';
}
