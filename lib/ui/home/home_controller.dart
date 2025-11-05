import 'package:flutterplayground/routing/routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Método para navegar para a página de Material Components
  Future<void> goToMaterialPage() async {
    await Get.toNamed(
      Routes.material,
    );
  }
}
