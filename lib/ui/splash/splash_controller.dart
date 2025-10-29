import 'package:flutterplayground/routing/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 800)).then((_) async {
      Get.offNamed(Routes.home);
    });
  }
}
