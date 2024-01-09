import 'package:barker_tour/shared/theme.dart';
import 'package:flutter/material.dart';

class BodyStep extends StatelessWidget {
  final String title;
  final Widget child;

  const BodyStep({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingAppHorizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(), style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 20),
          child,
        ],
      ),
    );
  }
}
