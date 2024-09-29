import 'package:barker_tour/presentation/navigation/routes.dart';

class AppNavigator {
  static goToLogin() => router.go(Routes.home.path);
  static goBack() => router.pop();
  static goToUrl(String url) async {
    // Uri uri = Uri.parse(url);
    // try {
    //   bool wasLaunched = await launchUrl(uri);

    //   if (!wasLaunched) {
    //     throw Exception('Could not launch $url');
    //   }
    // } catch (e) {
    //   debugPrint(e.toString());
    // }
  }
}
