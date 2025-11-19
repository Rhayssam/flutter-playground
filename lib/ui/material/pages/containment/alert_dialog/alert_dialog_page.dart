import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';
import 'package:get/get.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('AlertDialog'),
        leading: AppBarBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              ElevatedButton(
                child: Text('Mostrar Dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Alert Dialog'),
                      content: Text('Descrição do Alert Dialog'),
                      actions: [
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('title'),
                      content: Column(
                        children: [
                          Text('content'),
                          Icon(Icons.image),
                          Text('É possível colocar um ícone ou column no content do Dialog'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Text('Botão 1'),
                        ),
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Text('Botão 2'),
                        ),
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Text('Botão 3'),
                        ),
                        TextButton(
                          onPressed: () => Get.back(),
                          child: Text('Botão 4'),
                        ),
                      ],
                    ),
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
