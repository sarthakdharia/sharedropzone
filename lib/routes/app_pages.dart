import 'package:sharedropzone/pages/SplashScreen.dart';
import 'package:sharedropzone/pages/homepage.dart';
import 'package:get/get.dart';
part 'routs.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => MySplashScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      // binding: HomeBinding(),
    ),
  ];
}
