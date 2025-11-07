import 'package:flutterplayground/ui/material/pages/actions/segmented_button/segmented_button_controller.dart';
import 'package:get/get.dart';

class SegmentedButtonBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SegmentedButtonController());
  }
}
