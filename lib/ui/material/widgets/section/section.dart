import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.sectionName,
    required this.content,
  });

  final String sectionName;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer.withAlpha(60),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withAlpha(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            ExpansionTile(
              initiallyExpanded: false,
              title: Text(
                sectionName,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              children: [
                content,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
