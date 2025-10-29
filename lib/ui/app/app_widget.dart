import 'package:flutter/material.dart';
import 'package:flutterplayground/config/constants/app_constants.dart';
import 'package:flutterplayground/routing/app_router.dart';
import 'package:flutterplayground/routing/routes.dart';
import 'package:flutterplayground/ui/app/app_bindings.dart';
import 'package:flutterplayground/ui/core/theme/app_theme.dart';
import 'package:flutterplayground/ui/core/theme/theme_controller.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  ThemeController get _themeController => Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _themeController.syncTheme(MediaQuery.platformBrightnessOf(context)),
    );

    return GetMaterialApp(
      title: AppConstants.appTitle,
      initialBinding: AppBindings(),
      locale: Locale('pt'),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: Routes.splash,
      getPages: AppRouter.pages,
      unknownRoute: AppRouter.unknownRoutePage,
    );
  }
}
