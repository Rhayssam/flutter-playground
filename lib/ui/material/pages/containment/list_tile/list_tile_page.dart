import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterplayground/ui/material/pages/containment/list_tile/list_tile_controller.dart';
import 'package:get/get.dart';

class ListTilePage extends GetView<ListTileController> {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('ListTile'),
        leading: AppBarBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              spacing: 15,
              children: [
                Text(
                  '1 - ListTile com efeitos',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                FadeTransition(
                  opacity: controller.fadeAnimation,
                  child: Material(
                    child: ListTile(
                      title: Text('ListTile com um FadeTransition'),
                      selectedTileColor: Theme.of(context).colorScheme.primary,
                      selectedColor: Theme.of(context).colorScheme.onPrimary,
                      selected: true,
                    ),
                  ),
                ),
                Divider(color: Theme.of(context).colorScheme.outline),
                Text(
                  '2 - Atributos no ListTile',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(50),
                    child: Text('A'),
                  ),
                  onTap: () {},
                  trailing: Icon(Icons.favorite_rounded),
                  title: Text('Título'),
                  subtitle: Text('subtitle: Descrição pro ListTile'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(50),
                    child: Text(
                      'B',
                    ),
                  ),
                  onTap: () {},
                  trailing: Icon(Icons.favorite_rounded),
                  title: Text('Título'),
                  subtitle: Text(
                    'Descrição grande o suficiente para cobrir 2 linhas do ListTile',
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(50),
                    child: Text(
                      'C',
                    ),
                  ),
                  onTap: () {},
                  trailing: Icon(Icons.favorite_rounded),
                  title: Text('Título'),
                  subtitle: Text(
                    'A descrição muito grande e o atributo "isThreeLine: true" faz com que os widgets subam para o topo',
                  ),
                  isThreeLine: true,
                ),
                Obx(() {
                  return ListTile(
                    enabled: controller.isEnabled.value,
                    selected: controller.isSelected.value,
                    onTap: () {
                      controller.isSelected.value = !controller.isSelected.value;
                    },
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary.withAlpha(50),
                      child: Icon(Icons.person_rounded),
                    ),
                    title: Text('Título'),
                    selectedColor: Colors.green,
                    subtitle: Text(
                      'enabled: ${controller.isEnabled}, selected: ${controller.isSelected}',
                    ),
                    trailing: Switch(
                      value: controller.isEnabled.value,
                      onChanged: (value) {
                        controller.enableListTile(value);
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
