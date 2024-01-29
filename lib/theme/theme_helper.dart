import 'package:flutter/material.dart';
import 'package:souqvibes/core/constant/colors.dart';
import 'package:souqvibes/core/constant/fonts.dart';

class TextThemes {
  static TextTheme textTheme() => const TextTheme(
        displayLarge: TextStyle(
          fontSize: 20,
          fontFamily: AppFonts.playfairDisplay,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: AppColors.grey,
          fontSize: 17,
          fontFamily: AppFonts.playfairDisplay,
          fontWeight: FontWeight.bold,
        ),
        // bodyMedium: TextStyle(
        //   color: colorScheme.errorContainer.withOpacity(1),
        //   fontSize: 14,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w400,
        // ),
        // headlineLarge: TextStyle(
        //   color: colorScheme.primary,
        //   fontSize: 30,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w500,
        // ),
        // headlineSmall: TextStyle(
        //   color: colorScheme.primary,
        //   fontSize: 24,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w500,
        // ),
        // labelLarge: TextStyle(
        //   color: colorScheme.errorContainer.withOpacity(1),
        //   fontSize: 12,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w500,
        // ),
        // labelSmall: TextStyle(
        //   color: colorScheme.primary,
        //   fontSize: 9,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w700,
        // ),
        // titleLarge: TextStyle(
        //   color: colorScheme.errorContainer.withOpacity(1),
        //   fontSize: 20,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w700,
        // ),
        // titleMedium: TextStyle(
        //   color: colorScheme.errorContainer.withOpacity(1),
        //   fontSize: 18,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w500,
        // ),
        // titleSmall: TextStyle(
        //   color: colorScheme.errorContainer.withOpacity(1),
        //   fontSize: 14,
        //   fontFamily: 'DIN Next LT Arabic',
        //   fontWeight: FontWeight.w500,
        // ),
      );
}
