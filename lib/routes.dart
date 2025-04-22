import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:quran5/core/constant/approutes.dart';
import 'package:quran5/view/favoriteview.dart';
import 'package:quran5/view/homeview.dart';
import 'package:quran5/view/onpording.dart';
import 'package:quran5/view/splashview.dart';
import 'package:quran5/view/surahditilsview.dart';
import 'package:quran5/view/videoplayerview.dart';


List<GetPage<dynamic>>? getPages = [
  GetPage(name: Approutes.splashview, page: () => Splashview(),),
  GetPage(name: Approutes.homeview, page: () => Homeview(),),
  GetPage(name: Approutes.surahditils, page: () => SurahDitilsView(),),
  GetPage(name: Approutes.homeview, page: () => Homeview(),),
  GetPage(name: Approutes.videoplayer, page: () => VideoPlayerView()),
  GetPage(name: Approutes.favorite, page: () => FavoriteVideosView()),
   GetPage(name: Approutes.onpording, page: () => Onboarding()),
];