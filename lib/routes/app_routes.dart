import 'package:get/get.dart';
import 'package:souqvibes/features/auth/views/login.dart';
import 'package:souqvibes/features/language/views/language.dart';
import 'package:souqvibes/features/onboarding/views/onboarding.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String language = '/language';

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const Language(),
    ),
    GetPage(
      name: login,
      page: () => const Login(),
    ),
    GetPage(
      name: onboarding,
      page: () => const OnBoarding(),
    )
  ];
}
