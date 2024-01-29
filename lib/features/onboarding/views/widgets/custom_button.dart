import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqvibes/features/onboarding/controllers/onboarding_controller.dart';
import 'package:souqvibes/core/constant/colors.dart';

class CustomButtonOnBoarding extends GetView<OnboardingControllerImpl> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          color: AppColors.primaryColor,
          child: Text("continue".tr)),
    );
  }
}
