import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/app_bar_back_button.dart';
import 'package:flutterplayground/ui/core/widgets/app_bar/custom_app_bar.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

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
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Música legal'),
                      subtitle: Text('Musica de Julie Gable. Lyrics de Sidney Stein.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Comprar ingressos'),
                          onPressed: () => log('Clicou em comprar ingressos'),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Ouvir'),
                          onPressed: () => log('Clicou em ouvir'),
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    log('Clicou no card.');
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(child: Text('Card clicável')),
                  ),
                ),
              ),
              Card(child: _SampleCard(cardName: 'Elevated Card')),
              Card.filled(child: _SampleCard(cardName: 'Filled Card')),
              Card.outlined(child: _SampleCard(cardName: 'Outlined Card')),
            ],
          ),
        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName});
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: Center(
        child: Text(cardName),
      ),
    );
  }
}
