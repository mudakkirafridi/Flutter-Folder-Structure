import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:professional_e_commerce/features/authentication/controller/onboarding_controller.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/device/device_utility.dart';
import 'package:professional_e_commerce/utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const CircleBorder() , backgroundColor: dark ? AppColors.primary : Colors.black),
        onPressed: () => OnboardingController.instance.nextPage(), child:const Icon(Iconsax.arrow_right_3)));
  }
}