import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:get/get.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('BottomSheet'),
        leading: AppBarBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              ElevatedButton(
                child: Text('Bottom Sheet com Container'),
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        color: Theme.of(context).colorScheme.primaryContainer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          spacing: 20,
                          children: [
                            const SizedBox(height: 50),
                            Text('Conteúdo do BottomSheet'),
                            ElevatedButton(onPressed: () => Get.back(), child: Text('Fechar')),
                            const SizedBox(height: 50),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              ElevatedButton(
                child: Text('Bottom Sheet com SizedBox'),
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          spacing: 20,
                          children: [
                            const SizedBox(height: 50),
                            Text('Conteúdo do BottomSheet'),
                            ElevatedButton(onPressed: () => Get.back(), child: Text('Fechar')),
                            const SizedBox(height: 50),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
