import 'package:barker_tour/features/tutorial/widgets/stepper/body_step.dart';
import 'package:barker_tour/features/tutorial/widgets/stepper/stepper_main.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StepperMain(
        childrenBackground: const [
          'assets/images/stepper_background_1.jpg',
          'assets/images/stepper_background_1.jpg',
          'assets/images/stepper_background_1.jpg',
          'assets/images/stepper_background_1.jpg',
          'assets/images/stepper_background_1.jpg',
        ],
        children: [
          BodyStep(
              title: 'Barker',
              child: Text('This is the first step', style: Theme.of(context).textTheme.headlineMedium)),
          BodyStep(
            title: 'Step 2',
            child: Text('This is the second step', style: Theme.of(context).textTheme.headlineMedium),
          ),
          BodyStep(
              title: 'Step 3',
              child: Text('This is the third step', style: Theme.of(context).textTheme.headlineMedium)),
          BodyStep(
              title: 'Step 4',
              child: Text('This is the fourth step', style: Theme.of(context).textTheme.headlineMedium)),
          BodyStep(
              title: 'Step 5',
              child: Text('This is the fifth step', style: Theme.of(context).textTheme.headlineMedium)),
        ],
      ),
    );
  }
}
