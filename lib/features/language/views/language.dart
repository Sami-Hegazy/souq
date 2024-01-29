import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqvibes/core/constant/image_assets.dart';
import 'package:souqvibes/core/localization/change_local.dart';
import 'package:souqvibes/features/language/views/widgets/language_button.dart';
import 'package:souqvibes/routes/app_routes.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImageAsset.languageImageFull,
            ), // Your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: Get.width,
              padding: const EdgeInsets.all(36),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'choose_language'.tr,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 30),
                  LanguageButton(
                    title: 'english'.tr,
                    imagePath: AppImageAsset.englandFlag,
                    isSelected: true,
                    onPressed: () {
                      controller.changeLanguage('en');
                      Get.offAllNamed(AppRoutes.onboarding);
                    },
                  ),
                  const SizedBox(height: 12),
                  LanguageButton(
                    title: 'arabic'.tr,
                    imagePath: AppImageAsset.egyptFlag,
                    isSelected: false,
                    onPressed: () {
                      controller.changeLanguage('ar');
                      Get.offAllNamed(AppRoutes.onboarding);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
