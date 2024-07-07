import 'package:flutter/material.dart';
import 'package:professional_e_commerce/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/device/device_utility.dart';

class OnbaordingSkipButton extends StatelessWidget {
  const OnbaordingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: const Text('Skip')));
  }
}