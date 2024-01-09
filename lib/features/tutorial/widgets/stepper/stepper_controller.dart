import 'dart:async';

import 'package:flutter/material.dart';

class StepperController {
  int _currentStep = 0;
  late Timer _timer;
  final int steps;
  final int stepDuration;
  Function(int) onStepChanged;
  final VoidCallback? onFinished;

  StepperController({
    this.steps = 5,
    this.stepDuration = 10000,
    required this.onStepChanged,
    required this.onFinished,
  }) {
    _timer = Timer(const Duration(milliseconds: 0), () {});
  }

  void start() {
    _scheduleTimeout(stepDuration);
  }

  void stop() {
    _timer.cancel();
    _timer = Timer(const Duration(milliseconds: 0), () {});
  }

  Timer _scheduleTimeout([int milliseconds = 10000]) {
    _timer = Timer.periodic(
      Duration(milliseconds: milliseconds),
      (timer) {
        incrementStep();
      },
    );
    return _timer;
  }

  void resetTimeout() {
    stop();
    _scheduleTimeout(stepDuration);
  }

  void incrementStep() {
    if (_currentStep == steps - 1) {
      onCompleted();
      return;
    }
    _currentStep++;

    onStepChanged(_currentStep);
    resetTimeout();
  }

  void decrementStep() {
    if (_currentStep == 0) {
      return;
    }
    _currentStep--;
    onStepChanged(_currentStep);
    resetTimeout();
  }

  void onCompleted() {
    stop();
    onFinished?.call();
  }

  int get currentStep => _currentStep;
  Timer get timer => _timer;
}
