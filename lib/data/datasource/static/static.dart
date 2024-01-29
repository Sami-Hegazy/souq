import 'package:get/get.dart';
import 'package:souqvibes/core/constant/image_assets.dart';
import 'package:souqvibes/features/onboarding/models/onboarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "choose_product".tr,
      body: "first_on_boarding_para".tr,
      image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(
      title: "easy_snd_safe_payment".tr,
      body: "first_on_boarding_para".tr,
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(
      title: "track_your_order".tr,
      body: "first_on_boarding_para".tr,
      image: AppImageAsset.onBoardingImageThree),
  OnBoardingModel(
      title: "fast_delivery".tr,
      body: "first_on_boarding_para".tr,
      image: AppImageAsset.onBoardingImageFour),
];
