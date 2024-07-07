import 'package:flutter/material.dart';
import 'package:professional_e_commerce/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/device/device_utility.dart';
import 'package:professional_e_commerce/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
    
      child: SmoothPageIndicator(onDotClicked: controller.dotNavigationClick,controller: controller.pageController, count: 3, effect: ExpandingDotsEffect(activeDotColor: dark ? AppColors.white : AppColors.black , dotHeight: 6),),);
  }
}