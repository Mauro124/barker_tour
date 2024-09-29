import 'package:flutter/material.dart';
import 'package:barker_tour/presentation/utils/theme.dart';

class DotIndicator extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? size;

  const DotIndicator({super.key, this.child, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 8,
      height: size ?? 8,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: color ?? colorScheme.secondary,
        shape: BoxShape.circle,
      ),
      child: FittedBox(child: child),
    );
  }
}
