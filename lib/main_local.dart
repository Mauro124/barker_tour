import 'app_initializer.dart';
import 'config/app_config.dart';

Future<void> main() async {
  AppConfig.local();
  AppInitializer.init();
}
