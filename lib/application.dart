import 'package:barker_tour/presentation/navigation/routes.dart';
import 'package:barker_tour/presentation/utils/constants.dart';
import 'package:barker_tour/presentation/utils/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Texts.appName,
      routerConfig: router,
      theme: theme,
    );
  }
}
