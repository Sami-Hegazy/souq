import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqvibes/features/onboarding/controllers/onboarding_controller.dart';
import 'package:souqvibes/core/constant/colors.dart';
import 'package:souqvibes/data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImpl>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 900),
                width: controller.currentPage == index ? 20 : 5,
                height: 6,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
