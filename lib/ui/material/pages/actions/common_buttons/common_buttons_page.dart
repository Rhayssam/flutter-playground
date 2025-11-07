import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class CommonButtonsPage extends StatelessWidget {
  const CommonButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('CommonButtons'),
        leading: AppBarBackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                spacing: 15,
                children: [
                  Text(
                    'Tipos de botões do Material 3',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Divider(color: Theme.of(context).colorScheme.outline),
                  ElevatedButton(onPressed: () {}, child: const Text('ElevatedButton')),
                  FilledButton(onPressed: () {}, child: const Text('FilledButton')),
                  FilledButton.tonal(onPressed: () {}, child: const Text('FilledButton.Tonal')),
                  OutlinedButton(onPressed: () {}, child: const Text('OutlinedButton')),
                  TextButton(onPressed: () {}, child: const Text('TextButton')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
