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
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(
                  Icons.menu,
                ),
              );
            },
          ),
        ],
      ),
      endDrawer: HomeDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.abc),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
