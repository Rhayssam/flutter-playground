import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:flutterplayground/ui/core/theme/theme_controller.dart';
import 'package:flutterplayground/data/services/local_storage/session/user_session_storage.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    final storage = Get.find<UserSessionStorage>();
    Get.put(ThemeController(storage), permanent: true);
  }
}
