import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_vibes/homeDirectory/View/home_page.dart';
import 'playlistDirectory/Controller/playlist_controller.dart';
import 'package:music_vibes/playlistDirectory/View/playlist_page.dart';

import 'homeDirectory/Controller/home_controller.dart';

void main() {
  Get.put(HomeController());
  Get.put(PlaylistController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PlaylistPage(),
    );
  }
}
