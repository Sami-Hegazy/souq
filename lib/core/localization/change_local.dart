import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqvibes/core/services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLanguage(String languageCode) {
    Locale locale = Locale(languageCode);
    myServices.sharedPreferences.setString('lang', languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLanguage = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLanguage == 'en') {
      language = const Locale('en');
    } else if (sharedPrefLanguage == 'ar') {
      language = const Locale('ar');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
