import 'package:barker_tour/shared/theme.dart';
import 'package:barker_tour/features/tutorial/widgets/stepper/step_indicator.dart';
import 'package:barker_tour/features/tutorial/widgets/stepper/stepper_controller.dart';
import 'package:flutter/material.dart';

class StepperMain extends StatefulWidget {
  final List<Widget> children;
  final List<String>? childrenBackground;
  const StepperMain({super.key, required this.children, this.childrenBackground});

  @override
  State<StepperMain> createState() => _StepperMainState();
}

class _StepperMainState extends State<StepperMain> with SingleTickerProviderStateMixin {
  late StepperController _stepperController;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _initAnimation();
    _initStepperController();
  }

  @override
  void dispose() {
    _stepperController.stop();
    _animationController.dispose();
    super.dispose();
  }

  void _initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animationController.forward(from: 0);
  }

  void _initStepperController() {
    _stepperController = StepperController(
      steps: widget.children.length,
      stepDuration: 10000,
      onStepChanged: (step) {
        _animationController.forward(from: 0);
        setState(() {});
      },
      onFinished: () {
        _goToHome(context);
      },
    );
    _stepperController.start();
  }

  void _goToHome(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            widget.childrenBackground?[_stepperController.currentStep] ??
                'assets/images/stepper/stepper_background_1.png',
          ),
          colorFilter: ColorFilter.mode(
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
            BlendMode.darken,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(children: [
        _buildIndicators(),
        Positioned(
          top: 160,
          child: FadeTransition(
            opacity: _animationController,
            child: widget.children[_stepperController.currentStep],
          ),
        ),
      ]),
    );
  }

  Widget _buildIndicators() {
    return SafeArea(
        child: Container(
      height: 100,
      padding: kPaddingAppHorizontal.copyWith(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: StepIndicator(
              currentStep: _stepperController.currentStep,
              steps: _stepperController.steps,
              stepDuration: _stepperController.stepDuration,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 100,
            child: Visibility(
              visible: _stepperController.currentStep != _stepperController.steps - 1,
              child: TextButton(
                onPressed: () => _goToHome(context),
                child: Text(
                  'SALTEAR',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
