import 'package:flutterplayground/routing/routes.dart';
import 'package:flutterplayground/ui/home/home_bindings.dart';
import 'package:flutterplayground/ui/material/material_bindings.dart';
import 'package:flutterplayground/ui/material/material_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/common_buttons/common_buttons_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/extended_fab/extended_fab_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/fab/fab_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/icon_button/icon_button_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/segmented_button/segmented_button_bindings.dart';
import 'package:flutterplayground/ui/material/pages/actions/segmented_button/segmented_button_page.dart';
import 'package:flutterplayground/ui/material/pages/communication/badge/badge_page.dart';
import 'package:flutterplayground/ui/material/pages/communication/linear_progress_indicator/linear_progress_indicator_page.dart';
import 'package:flutterplayground/ui/material/pages/communication/snackbar/snackbar_page.dart';
import 'package:flutterplayground/ui/material/pages/containment/alert_dialog_page.dart';
import 'package:flutterplayground/ui/material/pages/containment/bottom_sheet_page.dart';
import 'package:flutterplayground/ui/material/pages/containment/card_page.dart';
import 'package:flutterplayground/ui/material/pages/containment/divider_page.dart';
import 'package:flutterplayground/ui/material/pages/containment/list_tile/list_tile_bindings.dart';
import 'package:flutterplayground/ui/material/pages/containment/list_tile/list_tile_page.dart';
import 'package:flutterplayground/ui/splash/splash_bindings.dart';

import 'package:get/get.dart';

import '../ui/home/home_page.dart';
import '../ui/splash/splash_page.dart';

final class AppRouter {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.material,
      page: () => MaterialPage(),
      binding: MaterialBindings(),
    ),
    GetPage(
      name: Routes.commonButtons,
      page: () => CommonButtonsPage(),
    ),
    GetPage(
      name: Routes.fab,
      page: () => FabPage(),
    ),
    GetPage(
      name: Routes.extendedFab,
      page: () => ExtendedFabPage(),
    ),
    GetPage(
      name: Routes.iconButton,
      page: () => IconButtonPage(),
    ),
    GetPage(
      name: Routes.segmentedButton,
      page: () => SegmentedButtonPage(),
      binding: SegmentedButtonBindings(),
    ),
    GetPage(
      name: Routes.badge,
      page: () => BadgePage(),
    ),
    GetPage(
      name: Routes.linearProgressIndicator,
      page: () => LinearProgressIndicatorPage(),
    ),
    GetPage(
      name: Routes.snackbar,
      page: () => SnackbarPage(),
    ),
    GetPage(
      name: Routes.alertDialog,
      page: () => AlertDialogPage(),
    ),
    GetPage(
      name: Routes.bottomSheet,
      page: () => BottomSheetPage(),
    ),
    GetPage(
      name: Routes.card,
      page: () => CardPage(),
    ),
    GetPage(
      name: Routes.divider,
      page: () => DividerPage(),
    ),
    GetPage(
      name: Routes.listTile,
      page: () => ListTilePage(),
      binding: ListTileBindings(),
    ),
  ];

  static final GetPage unknownRoutePage = GetPage(
    name: Routes.notFound,
    page: () => HomePage(),
  );
}
