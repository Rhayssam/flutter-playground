import 'package:flutterplayground/routing/routes.dart';
import 'package:flutterplayground/ui/home/home_bindings.dart';
import 'package:flutterplayground/ui/material/material_bindings.dart';
import 'package:flutterplayground/ui/material/material_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/common_buttons_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/extended_fab_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/fab_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/icon_button_page.dart';
import 'package:flutterplayground/ui/material/pages/actions/segmented_button_page.dart';
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
    // 1- SEÇÕES DO MATERIAL
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
    ),
  ];

  static final GetPage unknownRoutePage = GetPage(
    name: Routes.notFound,
    page: () => HomePage(),
  );
}
