import 'package:flutterplayground/routing/routes.dart';
import 'package:flutterplayground/ui/home/home_bindings.dart';
import 'package:flutterplayground/ui/splash/splash_bindings.dart';

import 'package:get/get.dart';

import '../ui/home/home_page.dart';
import '../ui/splash/splash_page.dart';

final class AppRouter {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.splash,
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
  ];

  static final GetPage unknownRoutePage = GetPage(
    name: Routes.notFound,
    page: () => HomePage(),
  );
}
