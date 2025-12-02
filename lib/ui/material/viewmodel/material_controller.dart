import 'package:flutterplayground/routing/routes.dart';
import 'package:get/get.dart';

class MaterialController extends GetxController {
  // 1.1 - Actions
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

  // 1.2 - Communication
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

  // 1.3 - Containment
  Future<void> goToAlertDialogPage() async {
    await Get.toNamed(
      Routes.alertDialog,
    );
  }

  Future<void> goToBottomSheetPage() async {
    await Get.toNamed(
      Routes.bottomSheet,
    );
  }

  Future<void> goToCardPage() async {
    await Get.toNamed(
      Routes.card,
    );
  }

  Future<void> goToDividerPage() async {
    await Get.toNamed(
      Routes.divider,
    );
  }

  Future<void> goToListTilePage() async {
    await Get.toNamed(
      Routes.listTile,
    );
  }

  Future<void> goToAppBarPage() async {
    await Get.toNamed(
      Routes.appBar,
    );
  }

  Future<void> goToBottomAppBarPage() async {
    await Get.toNamed(
      Routes.bottomAppBar,
    );
  }

  Future<void> goToNavigationBarPage() async {
    await Get.toNamed(
      Routes.navigationBar,
    );
  }
}
