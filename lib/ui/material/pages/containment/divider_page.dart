import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.primaryContainer(
        title: Text('Card'),
        leading: AppBarBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            spacing: 10,
            children: [
              Text('Esse aqui é bem simples... é literalmente um divisor.'),
              Text('Esse cara aqui.'),
              Icon(Icons.arrow_downward),
              Divider(),
              Text('É possível alterar a cor dele'),
              Divider(color: Theme.of(context).colorScheme.primary),
              Text('Também é possível alterar a espessura dele'),
              Divider(thickness: 3, color: Theme.of(context).colorScheme.primary),
              Text(
                'Também é possível alterar identação (do início e do final da linha de divisão)',
              ),
              Divider(
                thickness: 3,
                indent: 20,
                endIndent: 70,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                'É possível também alterar as bordas (deixar as bordas arredondadas)',
              ),
              Divider(
                thickness: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              Divider(
                thickness: 20,
                color: Theme.of(context).colorScheme.primary,
                radius: BorderRadiusGeometry.all(Radius.circular(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
