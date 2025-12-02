import 'package:flutter/material.dart';

class BottomAppBarPage extends StatelessWidget {
  const BottomAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomAppBarPage'),
      ),
      body: Column(
        children: [
          BottomAppBar(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Row(
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                IconButton(tooltip: 'Search', icon: const Icon(Icons.search), onPressed: () {}),
                IconButton(tooltip: 'Favorite', icon: const Icon(Icons.favorite), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
