import 'package:get/get.dart';
import 'package:music_vibes/routes/routes_name.dart';

import '../homeDirectory/Binding/home_binding.dart';
import '../homeDirectory/View/home_page.dart';
import '../playlistDirectory/Binding/playlist_binding.dart';
import '../playlistDirectory/View/playlist_page.dart';
import '../profileDirectory/Binding/profile_binding.dart';
import '../profileDirectory/View/profile_page.dart';

class AppPages {

  static const INITIAL = RouteName.home;

  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteName.playlist,
      page: () => PlaylistPage(),
      binding: PlaylistBinding(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}