import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './material_controller.dart';

class MaterialPage extends GetView<MaterialController> {
  const MaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Material Components'),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(),
    );
  }
}
