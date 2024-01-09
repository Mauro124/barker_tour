import 'package:flutter/material.dart';

class DotIndicator extends StatefulWidget {
  final bool isActive;
  final int stepDuration;

  const DotIndicator({super.key, this.isActive = false, this.stepDuration = 5000});

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> with SingleTickerProviderStateMixin {
  double size = 4;
  double maxWidth = 42;
  double radius = 100;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: widget.stepDuration),
      vsync: this,
    );

    if (widget.isActive) {
      _animationController.forward();
    }
  }

  @override
  void didUpdateWidget(DotIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isActive != oldWidget.isActive) {
      if (widget.isActive) {
        _animationController.forward();
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        Container(
          width: widget.isActive ? maxWidth : size,
          height: size,
          decoration: BoxDecoration(
            color: widget.isActive
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primary.withOpacity(0.5),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Container(
              width: widget.isActive ? _animationController.value * maxWidth : size,
              height: size,
              decoration: BoxDecoration(
                color: widget.isActive
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.primary.withOpacity(0.5),
                borderRadius: BorderRadius.circular(radius),
              ),
            );
          },
        ),
        // ...
      ],
    );
  }
}
