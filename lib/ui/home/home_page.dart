import 'package:flutterplayground/ui/core/theme/switch_theme_mode_fab.dart';
import 'package:flutterplayground/ui/core/theme/theme_controller.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterplayground/ui/core/widgets/custom_button/custom_button.dart';
import 'package:flutterplayground/ui/home/widgets/home_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'viewmodel/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
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
      floatingActionButton: SwitchThemeModeFab(themeController: themeController),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                'Flutter Playground',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              ),

              Divider(
                color: Theme.of(context).colorScheme.outline,
              ),
              Text(
                'Sistemas de projeto',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text('O Flutter é fornecido com dois sistemas de design como parte do SDK.'),
              CustomButton(
                title: 'Cupertino',
                content:
                    'Widgets bonitos e de alta fidelidade que estão em conformidade com as Diretrizes de Interface Humana da Apple para iOS e macOS.',
                onTap: () {},
              ),
              CustomButton(
                title: 'Material Components',
                content:
                    'Widgets visuais, comportamentais e com recursos de movimento, que implementam a especificação de design do Material 3.',
                onTap: () {
                  controller.goToMaterialPage();
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
