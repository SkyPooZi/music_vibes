import 'package:get/get.dart';

import '../Controller/playlist_controller.dart';

class PlaylistBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PlaylistController>(() => PlaylistController());
  }
}