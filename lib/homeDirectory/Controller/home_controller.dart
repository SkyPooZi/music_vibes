import 'package:get/get.dart';

class Recent {
  final String image;
  final String title;
  final String artist;

  Recent({required this.image, required this.title, required this.artist});
}

class Zidan {
  final String image;
  final String title;
  final String artist;

  Zidan({required this.image, required this.title, required this.artist});
}

class TopHit {
  final String image;
  final String title;
  final String artist;

  TopHit({required this.image, required this.title, required this.artist});
}

class HomeController extends GetxController {

  final List<TopHit> topHits = [
    TopHit(image: 'assets/yoasobi.jpg', title: 'Yoru Ni Kakeru', artist: 'Yoasobi'),
    TopHit(image: 'assets/jkt.jpg', title: 'Virus Tipe Hati', artist: 'JKT48'),
    TopHit(image: 'assets/YU-KA.jpg', title: 'Hoshizukiyo', artist: 'YU-KA'),
    TopHit(image: 'assets/interworld.jpg', title: 'Metamorphosis', artist: 'Interworld'),
    TopHit(image: 'assets/aruarian.jpg', title: 'Aruarian Dance', artist: 'Nujabes'),
    TopHit(image: 'assets/justin.jpg', title: 'Off My Face', artist: 'Justin Bieber'),
  ];

  final List<Zidan> zidan = [
    Zidan(image: 'assets/starboy.jpg', title: 'Starboy', artist: 'The Weeknd'),
    Zidan(image: 'assets/eminem.jpg', title: 'Mocking Bird', artist: 'Eminem'),
    Zidan(image: 'assets/discord.jpg', title: 'Discord', artist: 'The Living Tombstone'),
    Zidan(image: 'assets/perfectGirl.jpg', title: 'Perfect Girl', artist: 'Interworld'),
    Zidan(image: 'assets/dom-dom.jpg', title: 'Dom Dom X Bloody Mary', artist: 'speedspaces'),
    Zidan(image: 'assets/beatles.jpg', title: 'From Me To You', artist: 'The Beatles'),
  ];

  final List<Recent> recent = [
    Recent(image: 'assets/beatles.jpg', title: 'From Me To You', artist: 'The Beatles'),
    Recent(image: 'assets/lavida.jpg', title: 'Viva La Vida', artist: 'Coldplay'),
    Recent(image: 'assets/memory.jpg', title: 'Memory Reboot', artist: 'VØJ, Narvent'),
    Recent(image: 'assets/dark.jpg', title: 'After Dark', artist: 'Mr.Kitty'),
    Recent(image: 'assets/shout.jpg', title: 'Shout Out', artist: 'ENHYPEN'),
    Recent(image: 'assets/moon.jpg', title: 'Talking to the moon', artist: 'Bruno Mars'),
  ];
}

