import 'package:get/get.dart';
import 'viewmodel/material_controller.dart';

class MaterialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MaterialController());
  }
}
