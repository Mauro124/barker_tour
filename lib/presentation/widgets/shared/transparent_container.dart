import 'dart:ui';

import 'package:barker_tour/presentation/utils/theme.dart';
import 'package:flutter/material.dart';

class TransparentContainer extends StatelessWidget {
  final Widget child;

  const TransparentContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
        child: Container(
          width: 200,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
            border: Border(
              top: BorderSide(color: colorScheme.secondary.withOpacity(0.2), width: 1),
              left: BorderSide(color: colorScheme.secondary.withOpacity(0.2), width: 1),
            ),
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
