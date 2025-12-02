import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterplayground/ui/material/widgets/section/section.dart';
import 'package:flutterplayground/ui/material/widgets/section/section_actions.dart';
import 'package:flutterplayground/ui/material/widgets/section/section_comunication.dart';
import 'package:flutterplayground/ui/material/widgets/section/section_containment.dart';
import 'package:flutterplayground/ui/material/widgets/section/section_navigation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'viewmodel/material_controller.dart';

class MaterialPage extends GetView<MaterialController> {
  const MaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Material Components'),
        leading: AppBarBackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              spacing: 15,
              children: [
                Text(
                  'Widgets do Material',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Divider(color: Theme.of(context).colorScheme.outline),
                Text(
                  'O Flutter oferece uma variedade de widgets visuais, comportamentais e com recursos de movimento que implementam a especificação de design do Material 3. O Material 3 é a linguagem de design padrão do Flutter, permitindo que você crie e desenvolva aplicativos bonitos e fáceis de usar, que podem ser adaptados a qualquer plataforma.',
                ),
                Section(sectionName: 'Ações', content: SectionActions()),
                Section(sectionName: 'Comunication', content: SectionComunication()),
                Section(sectionName: 'Containment', content: SectionContainment()),
                Section(sectionName: 'Navigation', content: SectionNavigation()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
