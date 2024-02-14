import 'package:get/get.dart';

import '../Controller/detail_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DetailController>(() => DetailController());
  }
}