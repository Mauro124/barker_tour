import 'package:barker_tour/features/tutorial/widgets/stepper/dot_indicator.dart';
import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int steps;
  final int stepDuration;

  const StepIndicator({
    super.key,
    required this.currentStep,
    required this.steps,
    required this.stepDuration,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> dots = List.generate(steps, (index) {
      return DotIndicator(
        isActive: currentStep == index,
        stepDuration: stepDuration,
      );
    });

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: dots);
  }
}
