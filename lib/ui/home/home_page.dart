import 'package:flutterplayground/config/constants/assets.dart';
import 'package:flutterplayground/ui/core/theme/theme_switch.dart';
import 'package:flutterplayground/ui/core/widgets/custom_app_bar.dart';
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
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Theme.of(context).colorScheme.onSurface,
                backgroundImage: AssetImage(Assets.dash),
              ),
              ThemeSwitch(),
            ],
          ),
        ),
      ),
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
