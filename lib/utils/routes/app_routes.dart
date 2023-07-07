import 'package:get/get.dart';
import 'package:getx_practice/utils/routes/routes_name.dart';
import 'package:getx_practice/view/home_screen/home_binding.dart';
import 'package:getx_practice/view/home_screen/home_screen.dart';
import 'package:getx_practice/view/search_screen/search_binding.dart';
import 'package:getx_practice/view/search_screen/search_screen.dart';
import 'package:getx_practice/view/splash_screen/splash_bindings.dart';
import 'package:getx_practice/view/splash_screen/splash_screen.dart';

class AppRoutes {
  static List<GetPage> getPages = [
    GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(), binding: HomeBinding()),
    GetPage(name: RoutesName.searchScreen, page: () => const SearchScreen(), binding: SearchBinding()),
  ];
}
