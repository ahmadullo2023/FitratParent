import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  AppColors._();

  static const primaryColor = Color(0xFF47c77d);
  static const primaryColorOpacity = Color(0xFFedf9f2);
  static const greyText = Color(0xFF808284);
  static const grayDarker = Color(0xFF2E333A);
  static const grayDark = Color(0xFF636D7C);
  static const borderColor = Color(0xFFE5E6E7);
  static const grayNormal = Color(0xFF8491A5);
  static const grayLight = Color(0xFFF3F4F6);
  static const red = Color(0xFFF55555);
  static const redLight = Color(0xFFFEEEEE);
  static const yellow = Color(0xFFFEB23A);
  static const yellowLight = Color(0xFFFFF7EB);

  static const primaryOpacity = Color.fromRGBO(1, 50, 131, 0.05);

  static const grayBackground = Color(0xFFF0F0F5);

  static const buttonTextColor = Color(0xff9FAEA4);
  static const fafafa = Color(0xffFAFAFA);
  static const greyHome = Color(0xff8E93A6);
  static const text333333 = Color(0xff333333);

  static const white = Colors.white;
  static const black = Colors.black;
  static const transparent = Colors.transparent;
  static const grey3 = Color(0xFF898E96);
  static const grey5 = Color(0xFF374957);
  static const grey2 = Color(0xFFCCCDCE);
  static const grey1 = Color(0xFFE7E9EC);
  static const gray = Color(0xffA6ADB9);
  static const c9FAEA4 = Color(0xff9FAEA4);
  static const cF0F0F5 = Color(0xffF0F0F5);
  static const c2C2D30 = Color(0xff2C2D30);

  static const cEEEE = Color(0xffEEEEEE);
  static const green = Color(0xff36D488);

  static const grey4 = Color(0xFF393F48);
  static const dividerColor = Color(0xFFD7D8DD);
  static const secondary = Color(0xFFF1F1F1);
  static const secondary2 = Color(0xFFF8F8FA);
  static const cff8989 = Color(0xFFFF8989);
  static const c964A4A = Color(0xFF964A4A);



  static const blueRibbon50 = Color(0xFFeef4ff);
  static const blueRibbon100 = Color(0xFFd9e6ff);
  static const blueRibbon200 = Color(0xFFbcd5ff);
  static const blueRibbon300 = Color(0xFF8ebaff);
  static const blueRibbon400 = Color(0xFF5994ff);
  static const blueRibbon500 = Color(0xFF2d69ff);
  static const blueRibbon600 = Color(0xFF1b4bf5);
  static const blueRibbon700 = Color(0xFF1437e1);
  static const blueRibbon800 = Color(0xFF172db6);
  static const blueRibbon900 = Color(0xFF192c8f);
  static const blueRibbon950 = Color(0xFF141d57);

  //Chateau Green
  static const greenChateau50 = Color(0xFFedfff6);
  static const greenChateau100 = Color(0xFFd6ffeb);
  static const greenChateau200 = Color(0xFFafffd8);
  static const greenChateau300 = Color(0xFF71ffbb);
  static const greenChateau400 = Color(0xFF2dfb96);
  static const greenChateau500 = Color(0xFF02e577);
  static const greenChateau600 = Color(0xFF00bf5f);
  static const greenChateau700 = Color(0xFF00a556);
  static const greenChateau800 = Color(0xFF067540);
  static const greenChateau900 = Color(0xFF085f37);
  static const greenChateau950 = Color(0xFF00361d);

  //Cerise Red
  static const redCerise50 = Color(0xFFfef2f4);
  static const redCerise100 = Color(0xFFfde6e9);
  static const redCerise200 = Color(0xFFfbd0d9);
  static const redCerise300 = Color(0xFFf7aab9);
  static const redCerise400 = Color(0xFFf27a93);
  static const redCerise500 = Color(0xFFe63f66);
  static const redCerise600 = Color(0xFFd42a5b);
  static const redCerise700 = Color(0xFFb21e4b);
  static const redCerise800 = Color(0xFF951c45);
  static const redCerise900 = Color(0xFF801b40);
  static const redCerise950 = Color(0xFF470a1f);

  //Blue Violet
  static const blueViolet50 = Color(0xFFf0f2fd);
  static const blueViolet100 = Color(0xFFe3e7fc);
  static const blueViolet200 = Color(0xFFcdd3f8);
  static const blueViolet300 = Color(0xFFafb5f2);
  static const blueViolet400 = Color(0xFF8e8feb);
  static const blueViolet500 = Color(0xFF7a73e1);
  static const blueViolet600 = Color(0xFF6958d3);
  static const blueViolet700 = Color(0xFF5846b9);
  static const blueViolet800 = Color(0xFF493d96);
  static const blueViolet900 = Color(0xFF3f3778);
  static const blueViolet950 = Color(0xFF262046);

  //Shakespeare
  static const shakespeare50 = Color(0xFFeff9fc);
  static const shakespeare100 = Color(0xFFd7f0f6);
  static const shakespeare200 = Color(0xFFb3e1ee);
  static const shakespeare300 = Color(0xFF7fc9e1);
  static const shakespeare400 = Color(0xFF3ca6ca);
  static const shakespeare500 = Color(0xFF288db2);
  static const shakespeare600 = Color(0xFF247296);
  static const shakespeare700 = Color(0xFF245e7a);
  static const shakespeare800 = Color(0xFF254e65);
  static const shakespeare900 = Color(0xFF234256);
  static const shakespeare950 = Color(0xFF122a3a);

  //Waikawa Gray
  static const grayWaikawa50 = Color(0xFFf2f7fb);
  static const grayWaikawa100 = Color(0xFFe7f0f8);
  static const grayWaikawa200 = Color(0xFFd3e2f2);
  static const grayWaikawa300 = Color(0xFFb9cfe8);
  static const grayWaikawa400 = Color(0xFF9cb6dd);
  static const grayWaikawa500 = Color(0xFF839dd1);
  static const grayWaikawa600 = Color(0xFF6a7fc1);
  static const grayWaikawa700 = Color(0xFF6374ae);
  static const grayWaikawa800 = Color(0xFF4a5989);
  static const grayWaikawa900 = Color(0xFF414e6e);
  static const grayWaikawa950 = Color(0xFF262c40);

  //Lima
  static const lima50 = Color(0xFFf0fee7);
  static const lima100 = Color(0xFFddfbcc);
  static const lima200 = Color(0xFFbcf89e);
  static const lima300 = Color(0xFF91f066);
  static const lima400 = Color(0xFF6be437);
  static const lima500 = Color(0xFF4aca18);
  static const lima600 = Color(0xFF36a10f);
  static const lima700 = Color(0xFF2a7b10);
  static const lima800 = Color(0xFF266113);
  static const lima900 = Color(0xFF225215);
  static const lima950 = Color(0xFF0d2e05);

  //Vida Loca
  static const vidaLoca50 = Color(0xFFf5fbea);
  static const vidaLoca100 = Color(0xFFe8f7d0);
  static const vidaLoca200 = Color(0xFFd3efa7);
  static const vidaLoca300 = Color(0xFFb5e274);
  static const vidaLoca400 = Color(0xFF98d249);
  static const vidaLoca500 = Color(0xFF7ab82a);
  static const vidaLoca600 = Color(0xFF5b8f1d);
  static const vidaLoca700 = Color(0xFF47701b);
  static const vidaLoca800 = Color(0xFF3b591b);
  static const vidaLoca900 = Color(0xFF334c1b);
  static const vidaLoca950 = Color(0xFF19290a);

  //Keppel
  static const keppel50 = Color(0xFFeffefb);
  static const keppel100 = Color(0xFFcafdf5);
  static const keppel200 = Color(0xFF95faec);
  static const keppel300 = Color(0xFF58f0e1);
  static const keppel400 = Color(0xFF26dbcf);
  static const keppel500 = Color(0xFF0cafa7);
  static const keppel600 = Color(0xFF079a96);
  static const keppel700 = Color(0xFF0b7a79);
  static const keppel800 = Color(0xFF0e6161);
  static const keppel900 = Color(0xFF115050);
  static const keppel950 = Color(0xFF022f31);

  //Persian Red
  static const redPersian50 = Color(0xFFfef2f2);
  static const redPersian100 = Color(0xFFffe1e2);
  static const redPersian200 = Color(0xFFffc8c9);
  static const redPersian300 = Color(0xFFffa2a4);
  static const redPersian400 = Color(0xFFfd6c70);
  static const redPersian500 = Color(0xFFf53e43);
  static const redPersian600 = Color(0xFFd91c21);
  static const redPersian700 = Color(0xFFbe171b);
  static const redPersian800 = Color(0xFF9d171b);
  static const redPersian900 = Color(0xFF821a1d);
  static const redPersian950 = Color(0xFF47080a);

  //Cumin
  static const cumin50 = Color(0xFFfcf9ee);
  static const cumin100 = Color(0xFFf6edcf);
  static const cumin200 = Color(0xFFebd99c);
  static const cumin300 = Color(0xFFe1c268);
  static const cumin400 = Color(0xFFdaac45);
  static const cumin500 = Color(0xFFd1912f);
  static const cumin600 = Color(0xFFb97126);
  static const cumin700 = Color(0xFF9a5423);
  static const cumin800 = Color(0xFF884825);
  static const cumin900 = Color(0xFF68371f);
  static const cumin950 = Color(0xFF3b1c0d);

  //Tyrian Purple
  static const purpleTyrian50 = Color(0xFFfdf2f9);
  static const purpleTyrian100 = Color(0xFFfce7f5);
  static const purpleTyrian200 = Color(0xFFfad0ed);
  static const purpleTyrian300 = Color(0xFFf7aadc);
  static const purpleTyrian400 = Color(0xFFf175c4);
  static const purpleTyrian500 = Color(0xFFe94baa);
  static const purpleTyrian600 = Color(0xFFd72b8a);
  static const purpleTyrian700 = Color(0xFFbb1b70);
  static const purpleTyrian800 = Color(0xFF9a1a5c);
  static const purpleTyrian900 = Color(0xFF67153f);
  static const purpleTyrian950 = Color(0xFF4e092c);

  //Purple Heart
  static const purpleHeart50 = Color(0xFFf4f2ff);
  static const purpleHeart100 = Color(0xFFece7ff);
  static const purpleHeart200 = Color(0xFFdad2ff);
  static const purpleHeart300 = Color(0xFFbfaeff);
  static const purpleHeart400 = Color(0xFFa081ff);
  static const purpleHeart500 = Color(0xFF834eff);
  static const purpleHeart600 = Color(0xFF752afd);
  static const purpleHeart700 = Color(0xFF6115df);
  static const purpleHeart800 = Color(0xFF5613c4);
  static const purpleHeart900 = Color(0xFF4812a0);
  static const purpleHeart950 = Color(0xFF2b086d);

  //Jagger
  static const jagger50 = Color(0xFFfaf6fe);
  static const jagger100 = Color(0xFFf3eafd);
  static const jagger200 = Color(0xFFe9d8fc);
  static const jagger300 = Color(0xFFd7b9f9);
  static const jagger400 = Color(0xFFbf8cf4);
  static const jagger500 = Color(0xFFa760ec);
  static const jagger600 = Color(0xFF913fde);
  static const jagger700 = Color(0xFF7c2dc3);
  static const jagger800 = Color(0xFF692a9f);
  static const jagger900 = Color(0xFF562380);
  static const jagger950 = Color(0xFF390d5d);

  //Punch
  static const punch50 = Color(0xFFfff2f1);
  static const punch100 = Color(0xFFffe3e0);
  static const punch200 = Color(0xFFffcbc5);
  static const punch300 = Color(0xFFffa79d);
  static const punch400 = Color(0xFFff7465);
  static const punch500 = Color(0xFFfe4935);
  static const punch600 = Color(0xFFdb2612);
  static const punch700 = Color(0xFFc7200e);
  static const punch800 = Color(0xFFa41f10);
  static const punch900 = Color(0xFF882014);
  static const punch950 = Color(0xFF4a0c05);

  //Black Rose
  static const blackRose50 = Color(0xFFfef1f8);
  static const blackRose100 = Color(0xFFfee5f4);
  static const blackRose200 = Color(0xFFffcbe9);
  static const blackRose300 = Color(0xFFffa1d7);
  static const blackRose400 = Color(0xFFff67b9);
  static const blackRose500 = Color(0xFFfa3a9d);
  static const blackRose600 = Color(0xFFea1879);
  static const blackRose700 = Color(0xFFcc0a5f);
  static const blackRose800 = Color(0xFFa80c4e);
  static const blackRose900 = Color(0xFF8c0f44);
  static const blackRose950 = Color(0xFF5c0127);

  //coldTurkey
  static const coldTurkey50 = Color(0xFFf9f7f7);
  static const coldTurkey100 = Color(0xFFf2eeee);
  static const coldTurkey200 = Color(0xFFe9dfe0);
  static const coldTurkey300 = Color(0xFFcebbbd);
  static const coldTurkey400 = Color(0xFFc0a9ab);
  static const coldTurkey500 = Color(0xFFa88b8e);
  static const coldTurkey600 = Color(0xFF917174);
  static const coldTurkey700 = Color(0xFF785d60);
  static const coldTurkey800 = Color(0xFF654f51);
  static const coldTurkey900 = Color(0xFF574547);
  static const coldTurkey950 = Color(0xFF2d2223);

  //Persian Blue
  static const bluePersian50 = Color(0xFFf0f5fe);
  static const bluePersian100 = Color(0xFFdde7fc);
  static const bluePersian200 = Color(0xFFc3d5fa);
  static const bluePersian300 = Color(0xFF9abbf6);
  static const bluePersian400 = Color(0xFF6a98f0);
  static const bluePersian500 = Color(0xFF4774ea);
  static const bluePersian600 = Color(0xFF3256de);
  static const bluePersian700 = Color(0xFF2943cd);
  static const bluePersian800 = Color(0xFF2738a6);
  static const bluePersian900 = Color(0xFF253383);
  static const bluePersian950 = Color(0xFF1b2250);

  //Electric Violet
  static const electricViolet50 = Color(0xFFfaf4ff);
  static const electricViolet100 = Color(0xFFf4e5ff);
  static const electricViolet200 = Color(0xFFebcfff);
  static const electricViolet300 = Color(0xFFdca9ff);
  static const electricViolet400 = Color(0xFFc672ff);
  static const electricViolet500 = Color(0xFFb13dff);
  static const electricViolet600 = Color(0xFF9e18ff);
  static const electricViolet700 = Color(0xFF8c09ec);
  static const electricViolet800 = Color(0xFF740dbc);
  static const electricViolet900 = Color(0xFF600c97);
  static const electricViolet950 = Color(0xFF420072);

  //Emerald
  static const emerald50 = Color(0xFFeefff3);
  static const emerald100 = Color(0xFFd8ffe7);
  static const emerald200 = Color(0xFFC2F0D5);
  static const emerald300 = Color(0xFF79fcab);
  static const emerald400 = Color(0xFF38f07f);
  static const emerald500 = Color(0xFF35B26A);
  static const emerald600 = Color(0xFF269354);
  static const emerald700 = Color(0xFF088d3d);
  static const emerald800 = Color(0xFF0c6f34);
  static const emerald900 = Color(0xFF0c5b2d);
  static const emerald950 = Color(0xFF003316);

  /*
   static const emerald50 = Color(0xFFeefff3);
  static const emerald100 = Color(0xFFd8ffe7);
  static const emerald200 = Color(0xFFb4fecf);
  static const emerald300 = Color(0xFF79fcab);
  static const emerald400 = Color(0xFF38f07f);
  static const emerald500 = Color(0xFF0ed95d);
  static const emerald600 = Color(0xFF05bc4c);
  static const emerald700 = Color(0xFF088d3d);
  static const emerald800 = Color(0xFF0c6f34);
  static const emerald900 = Color(0xFF0c5b2d);
  static const emerald950 = Color(0xFF003316);
   */

  //Chartreuse
  static const chartreuse50 = Color(0xFFf6ffe5);
  static const chartreuse100 = Color(0xFFe9ffc7);
  static const chartreuse200 = Color(0xFFd4ff96);
  static const chartreuse300 = Color(0xFFb6fd59);
  static const chartreuse400 = Color(0xFF99f328);
  static const chartreuse500 = Color(0xFF82e909);
  static const chartreuse600 = Color(0xFF5cae02);
  static const chartreuse700 = Color(0xFF468407);
  static const chartreuse800 = Color(0xFF3a680c);
  static const chartreuse900 = Color(0xFF31580f);
  static const chartreuse950 = Color(0xFF173102);

  //Screaming Green
  static const greenScreaming50 = Color(0xFFeffef0);
  static const greenScreaming100 = Color(0xFFdafedd);
  static const greenScreaming200 = Color(0xFFb6fcbe);
  static const greenScreaming300 = Color(0xFF5ff570);
  static const greenScreaming400 = Color(0xFF3fe953);
  static const greenScreaming500 = Color(0xFF16d12d);
  static const greenScreaming600 = Color(0xFF0bae1e);
  static const greenScreaming700 = Color(0xFF0d881c);
  static const greenScreaming800 = Color(0xFF106b1c);
  static const greenScreaming900 = Color(0xFF0f581a);
  static const greenScreaming950 = Color(0xFF023109);

  //Mariner
  static const mariner50 = Color(0xFFf2f6fd);
  static const mariner100 = Color(0xFFe4ebfa);
  static const mariner200 = Color(0xFFc4d7f3);
  static const mariner300 = Color(0xFF90b5e9);
  static const mariner400 = Color(0xFF548fdc);
  static const mariner500 = Color(0xFF2c6cc0);
  static const mariner600 = Color(0xFF1f57aa);
  static const mariner700 = Color(0xFF1a458a);
  static const mariner800 = Color(0xFF193c73);
  static const mariner900 = Color(0xFF1a3460);
  static const mariner950 = Color(0xFF12213f);

  //Sandal
  static const sandal50 = Color(0xFFf6f4f0);
  static const sandal100 = Color(0xFFe8e4d9);
  static const sandal200 = Color(0xFFd4c9b4);
  static const sandal300 = Color(0xFFbaa98a);
  static const sandal400 = Color(0xFFa88f6c);
  static const sandal500 = Color(0xFF977c5b);
  static const sandal600 = Color(0xFF81654d);
  static const sandal700 = Color(0xFF694f3f);
  static const sandal800 = Color(0xFF59433a);
  static const sandal900 = Color(0xFF4e3c35);
  static const sandal950 = Color(0xFF2c201c);

  //Mulled Wine
  static const mulledWine50 = Color(0xFFf3f4fa);
  static const mulledWine100 = Color(0xFFe9eaf6);
  static const mulledWine200 = Color(0xFFd7d9ee);
  static const mulledWine300 = Color(0xFFbfc1e2);
  static const mulledWine400 = Color(0xFFa5a4d5);
  static const mulledWine500 = Color(0xFF938dc7);
  static const mulledWine600 = Color(0xFF8175b6);
  static const mulledWine700 = Color(0xFF70639f);
  static const mulledWine800 = Color(0xFF544c77);
  static const mulledWine900 = Color(0xFF4c4768);
  static const mulledWine950 = Color(0xFF2e293d);

  //Bossanova
  static const bossanova50 = Color(0xFFfbf7fc);
  static const bossanova100 = Color(0xFFf7eef9);
  static const bossanova200 = Color(0xFFeddbf3);
  static const bossanova300 = Color(0xFFe1bfe8);
  static const bossanova400 = Color(0xFFcf99d9);
  static const bossanova500 = Color(0xFFb870c5);
  static const bossanova600 = Color(0xFF9d51a8);
  static const bossanova700 = Color(0xFF82408b);
  static const bossanova800 = Color(0xFF6c3672);
  static const bossanova900 = Color(0xFF4b284e);
  static const bossanova950 = Color(0xFF39163c);

  //Torch Red
  static const redTorch50 = Color(0xFFfef2f2);
  static const redTorch100 = Color(0xFFffe1e2);
  static const redTorch200 = Color(0xFFffc8ca);
  static const redTorch300 = Color(0xFFffa2a5);
  static const redTorch400 = Color(0xFFfc6d72);
  static const redTorch500 = Color(0xFFf4363d);
  static const redTorch600 = Color(0xFFe22027);
  static const redTorch700 = Color(0xFFbe171d);
  static const redTorch800 = Color(0xFF9d171c);
  static const redTorch900 = Color(0xFF821a1e);
  static const redTorch950 = Color(0xFF47080a);

  //Studio
  static const studio50 = Color(0xFFf5f4fe);
  static const studio100 = Color(0xFFedebfc);
  static const studio200 = Color(0xFFdddafa);
  static const studio300 = Color(0xFFc4bcf6);
  static const studio400 = Color(0xFFa595f0);
  static const studio500 = Color(0xFF876ae8);
  static const studio600 = Color(0xFF7044db);
  static const studio700 = Color(0xFF6639c8);
  static const studio800 = Color(0xFF552fa8);
  static const studio900 = Color(0xFF46288a);
  static const studio950 = Color(0xFF2b185d);

  //Blue Chill
  static const blueChill50 = Color(0xFFebfffc);
  static const blueChill100 = Color(0xFFccfffb);
  static const blueChill200 = Color(0xFF9ffff9);
  static const blueChill300 = Color(0xFF5efff8);
  static const blueChill400 = Color(0xFF15fbf9);
  static const blueChill500 = Color(0xFF00dfe1);
  static const blueChill600 = Color(0xFF00b3bd);
  static const blueChill700 = Color(0xFF06939e);
  static const blueChill800 = Color(0xFF0f707b);
  static const blueChill900 = Color(0xFF115c68);
  static const blueChill950 = Color(0xFF043f48);







}

final appThemeData = ThemeData(
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.primaryColor,
    primary: AppColors.primaryColor,
  ),
  tabBarTheme: TabBarThemeData(labelPadding: EdgeInsets.zero),

  datePickerTheme: DatePickerThemeData(
      rangeSelectionBackgroundColor: AppColors.primaryColor.withOpacity(0.5)),

  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: AppColors.primaryColor),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    centerTitle: true,
  ),

  textTheme: GoogleFonts.interTextTheme(),
  // const TextTheme(
  //   displayLarge: TextStyle(
  //       fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.black),
  //   displayMedium: TextStyle(
  //       fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.black),
  //   displaySmall: TextStyle(
  //       fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.black),
  //   headlineMedium: TextStyle(
  //       fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.black),
  //   headlineLarge: TextStyle(
  //       fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black),
  //   headlineSmall: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
  //   titleLarge: TextStyle(
  //       fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black),
  //   titleMedium: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.black),
  //   titleSmall: TextStyle(
  //       fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.black),
  //   bodyLarge: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.black),
  //   bodyMedium: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
  //   bodySmall: TextStyle(
  //     fontSize: 12,
  //     fontWeight: FontWeight.w400,
  //     color: AppColors.black,
  //   ),
  // ),
  // fontFamily: 'SFPro',
  scaffoldBackgroundColor: Colors.white,

  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.red,
  primaryColor: AppColors.primaryColor,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
