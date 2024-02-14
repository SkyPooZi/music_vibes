import 'package:get/get.dart';
import 'package:music_vibes/playlistDirectory/Model/playlist_model.dart';

class PlaylistController extends GetxController {
  RxBool isPlaying = false.obs;
  RxBool isPlayingNow = false.obs;
  Rx<Album> myAlbum = Album(
    albumName: "My Album",
    songs: [
      Song(
        image: "song1.jpg",
        name: "Song 1",
        author: "Author 1",
      ),
      Song(
        image: "song2.jpg",
        name: "Song 2",
        author: "Author 2",
      ),
    ],
  ).obs;

  // Accessing album information in the controller
  void printAlbumInformation() {
    print("Album Name: ${myAlbum.value.albumName}");
    print("Songs in ${myAlbum.value.albumName}:");
    for (Song song in myAlbum.value.songs) {
      print("  - ${song.name} by ${song.author} (${song.image})");
    }
  }

  void togglePlayPause() {
    isPlaying.value = !isPlaying.value;
  }

  void togglePlayPauseNow() {
    isPlayingNow.value = !isPlayingNow.value;
  }
}
