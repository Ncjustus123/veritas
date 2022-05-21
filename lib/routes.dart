import 'package:get/get.dart';
import 'package:vrl/views/initialpage.dart';
import 'package:vrl/views/welcome.dart';
class Routes{
  static const String initialpage = '/initial-page';
  static const String welcomeScreen = '/splash-page';
  static List<GetPage> getXRoutes(){
    return[
      GetPage(name: Routes.welcomeScreen, page: () => WelcomePage()),
      GetPage(name: Routes.initialpage, page: () => InitialPage()),
    ];
  }
}