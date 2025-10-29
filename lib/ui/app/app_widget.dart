import 'package:flutter/material.dart';
import 'package:flutterplayground/config/constants/app_constants.dart';
import 'package:flutterplayground/routing/app_router.dart';
import 'package:flutterplayground/routing/routes.dart';
import 'package:flutterplayground/ui/core/theme/app_theme.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.appTitle,
      locale: Locale('pt'),
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: Routes.splash,
      getPages: AppRouter.pages,
      unknownRoute: AppRouter.unknownRoutePage,
    );
  }
}
