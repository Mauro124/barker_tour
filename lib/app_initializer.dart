import 'package:barker_tour/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppInitializer {
  static void init() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const ProviderScope(child: App()));
  }
}
