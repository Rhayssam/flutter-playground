import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './material_controller.dart';

class MaterialPage extends GetView<MaterialController> {
    
    const MaterialPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('MaterialPage'),),
            body: Container(),
        );
    }
}