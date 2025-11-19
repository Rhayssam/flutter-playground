import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileController extends GetxController with GetSingleTickerProviderStateMixin {
  late final AnimationController fadeController;
  late final Animation<double> fadeAnimation;

  var isSelected = false.obs;
  var isEnabled = true.obs;

  @override
  void onInit() {
    fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    fadeAnimation = CurvedAnimation(
      parent: fadeController,
      curve: Curves.decelerate,
    );

    super.onInit();
  }

  void enableListTile(bool? value) {
    isEnabled.value = value ?? false;
  }

  @override
  void onClose() {
    fadeController.dispose();
    super.onClose();
  }
}
