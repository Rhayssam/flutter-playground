import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Snackbar'),
        leading: AppBarBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              ElevatedButton(
                child: Text('Snackbar Comum'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Essa é a Snackbar!'),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('SnackBar Flutuante'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      action: SnackBarAction(
                        label: 'Ação',
                        onPressed: () {},
                      ),
                      content: Text('Essa é a SnackBar Flutuante'),
                      behavior: SnackBarBehavior.floating,
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
