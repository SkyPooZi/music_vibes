class Song {
  String image;
  String name;
  String author;

  Song({
    required this.image,
    required this.name,
    required this.author,
  });
}

class Album {
  String albumName;
  List<Song> songs;

  Album({
    required this.albumName,
    required this.songs,
  });
}

void main() {
  // Create songs
  Song song1 = Song(
    image: "song1.jpg",
    name: "Song 1",
    author: "Author 1",
  );

  Song song2 = Song(
    image: "song2.jpg",
    name: "Song 2",
    author: "Author 2",
  );

  // Create an album
  Album myAlbum = Album(
    albumName: "My Album",
    songs: [song1, song2],
  );

  // Accessing album information
  print("Album Name: ${myAlbum.albumName}");
  print("Songs in ${myAlbum.albumName}:");
  for (Song song in myAlbum.songs) {
    print("  - ${song.name} by ${song.author} (${song.image})");
  }
}
