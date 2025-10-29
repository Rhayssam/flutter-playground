import 'package:flutterplayground/ui/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFBF8EF),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
