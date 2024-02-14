import 'package:get/get.dart';

class DetailController extends GetxController {
  RxBool isPlaying = false.obs;

  void togglePlayPause() {
    isPlaying.value = !isPlaying.value;
  }
}