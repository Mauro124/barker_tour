import 'package:flutter_flavor/flutter_flavor.dart';

class AppConfig {
  static String get envName => FlavorConfig.instance.variables["envName"];
  static String get baseUrl => FlavorConfig.instance.variables["baseUrl"];

  static void local() {
    FlavorConfig(
      name: "LOCAL",
      variables: {
        "envName": "local",
        "baseUrl": 'http://127.0.0.1:5001/pcm-partes-diarios/us-central1/dev',
      },
    );
  }

  static void dev() {
    FlavorConfig(
      name: "DEV",
      variables: {
        "envName": "development",
        "baseUrl": 'https://us-central1-pcm-partes-diarios.cloudfunctions.net/dev',
      },
    );
  }

  static void production() {
    FlavorConfig(
      name: "PRODUCTION",
      variables: {
        "envName": "production",
        "baseUrl": '',
      },
    );
  }
}
