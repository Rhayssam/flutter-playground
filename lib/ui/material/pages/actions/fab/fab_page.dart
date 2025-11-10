import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class FabPage extends StatelessWidget {
  const FabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('FloatingActionButton'),
        leading: AppBarBackButton(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              spacing: 15,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Tipos de FloatingActionButton',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                Divider(color: Theme.of(context).colorScheme.outline),
                Text(
                  'O FloatingActionButton é um botão de ação flutuante que aparece ao passar o cursor sobre o conteúdo para promover uma ação principal no aplicativo.',
                ),
                Text('FloatingActionButton.small'),
                FloatingActionButton.small(
                  heroTag: 'fab_small',
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                Text('FloatingActionButton'),
                FloatingActionButton(
                  heroTag: 'fab_normal',
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                Text('FloatingActionButton.large'),
                FloatingActionButton.large(
                  heroTag: 'fab_large',
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                Text('FloatingActionButton.extended'),
                FloatingActionButton.extended(
                  heroTag: 'fab_extended',
                  label: Text('Botão extendido'),
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                Text('FloatingActionButton com shape CircleBorder'),
                FloatingActionButton(
                  heroTag: 'fab_circle',
                  onPressed: () {},
                  shape: CircleBorder(),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
