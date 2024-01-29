import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:souqvibes/features/onboarding/controllers/onboarding_controller.dart';
import 'package:souqvibes/features/onboarding/views/widgets/custom_button.dart';
import 'package:souqvibes/features/onboarding/views/widgets/custom_slider.dart';
import 'package:souqvibes/features/onboarding/views/widgets/dot_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImpl());
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(flex: 2),
                  CustomButtonOnBoarding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
