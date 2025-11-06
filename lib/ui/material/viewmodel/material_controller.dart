import 'package:flutterplayground/routing/routes.dart';
import 'package:get/get.dart';

class MaterialController extends GetxController {
  Future<void> goToCommonButtonsPage() async {
    await Get.toNamed(
      Routes.commonButtons,
    );
  }

  Future<void> goToFabPage() async {
    await Get.toNamed(
      Routes.fab,
    );
  }

  Future<void> goToExtendedFabPage() async {
    await Get.toNamed(
      Routes.extendedFab,
    );
  }

  Future<void> goToIconButtonPage() async {
    await Get.toNamed(
      Routes.iconButton,
    );
  }

  Future<void> goToSegmentedButtonPage() async {
    await Get.toNamed(
      Routes.segmentedButton,
    );
  }

  Future<void> goToBadgePage() async {
    await Get.toNamed(
      Routes.badge,
    );
  }

  Future<void> goToLinearProgressIndicatorPage() async {
    await Get.toNamed(
      Routes.linearProgressIndicator,
    );
  }

  Future<void> goToSnackbarPage() async {
    await Get.toNamed(
      Routes.snackbar,
    );
  }
}
