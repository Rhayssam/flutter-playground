import 'package:flutterplayground/ui/material/pages/containment/list_tile/list_tile_controller.dart';
import 'package:get/get.dart';

class ListTileBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ListTileController());
  }
}
