import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Essa é a AppBar padrão'),
        leading: AppBarBackButton(),
      ),
      body: Column(
        children: [
          AppBar(
            leading: Icon(Icons.cookie),
            backgroundColor: Colors.amber,
            title: Text('Ela sempre fica no topo'),
          ),
          CustomAppBar.primary(
            title: Text('Posso ter ações --->'),
          ),
          CustomAppBar.primaryContainer(
            title: Text('Posso ter várias cores'),
          ),
        ],
      ),
    );
  }
}
