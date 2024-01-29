import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqvibes/core/localization/app_localization.dart';
import 'package:souqvibes/core/localization/change_local.dart';
import 'package:souqvibes/core/services/services.dart';
import 'package:souqvibes/routes/app_routes.dart';
import 'package:souqvibes/theme/theme_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Souq Vibes',
      translations: AppLocalization(),
      theme: ThemeData(
        useMaterial3: true,
        textTheme: TextThemes.textTheme(),
      ),
      locale: controller.language,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.initialRoute,
      // home: const OnBoarding(),
    );
  }
}
