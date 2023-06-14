import 'package:get/get_navigation/get_navigation.dart';
import 'package:school_management/ui/view/bottomNavBar/more_option/calculator/calculator.dart';
import 'package:school_management/ui/view/splash/splash_screen.dart';

import '../view/auth/login_screen/login_screen.dart';

const String splash = "/Splash-Screen";

const loginScreen = "/Login-Screen";
const calculatorScreen = "/Calculator-Screen";

List<GetPage> getpages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: loginScreen,
    page: () => LoginScreen(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: calculatorScreen,
    page: () => CalculatorScreen(),
    transition: Transition.leftToRight,
  ),
];
