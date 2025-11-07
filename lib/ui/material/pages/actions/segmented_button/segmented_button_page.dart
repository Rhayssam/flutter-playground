import 'package:flutter/material.dart';
import 'package:flutterplayground/data/enum/languages_enum.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterplayground/ui/material/pages/actions/segmented_button/segmented_button_controller.dart';
import 'package:get/get.dart';

class SegmentedButtonPage extends GetView<SegmentedButtonController> {
  const SegmentedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: const Text('SegmentedButton'),
        leading: const AppBarBackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Botão Segmentado',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Divider(color: Theme.of(context).colorScheme.outline),
                const Text(
                  'Um botão segmentado permite ao usuário selecionar entre um conjunto limitado de opções.',
                ),
                const SizedBox(height: 16),
                Obx(
                  () => SegmentedButton<LanguagesEnum>(
                    segments: const [
                      ButtonSegment(value: LanguagesEnum.dart, label: Text('Dart')),
                      ButtonSegment(value: LanguagesEnum.flutter, label: Text('Flutter')),
                      ButtonSegment(value: LanguagesEnum.getx, label: Text('GetX')),
                    ],
                    selected: {controller.languageView.value},
                    onSelectionChanged: (newSelection) {
                      controller.updateSelectedLanguage(newSelection.first);
                    },
                  ),
                ),
                const SizedBox(height: 20),

                Obx(
                  () => Text(
                    'Selecionado: ${controller.languageView.value.name}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Divider(color: Theme.of(context).colorScheme.outline),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
