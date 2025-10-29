import 'package:flutterplayground/ui/core/theme/theme_switch.dart';
import 'package:flutterplayground/ui/core/widgets/custom_app_bar.dart';
import 'package:flutterplayground/ui/home/widgets/home_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Home Page'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
              ),
            );
          },
        ),
      ),
      drawer: HomeDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ThemeSwitch(),
          ),
        ],
      ),
    );
  }
}
