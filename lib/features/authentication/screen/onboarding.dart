import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional_e_commerce/features/authentication/controller/onboarding_controller.dart';
import 'package:professional_e_commerce/features/authentication/widgets/onbaording_widget.dart';
import 'package:professional_e_commerce/features/authentication/widgets/onboarding_dot_navigation.dart';
import 'package:professional_e_commerce/features/authentication/widgets/onboarding_next_button.dart';
import 'package:professional_e_commerce/features/authentication/widgets/onboarding_skip.dart';
import 'package:professional_e_commerce/utils/constants/image_strings.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            onPageChanged: controller.updatePageIndicator,
            controller: controller.pageController,
            children: const [
              OnboardingWidget(image: AppImages.onBoardingImage1,  title: AppTexts.onBoardingTitle1,subtitle: AppTexts.onBoardingSubTitle1,),
               OnboardingWidget(image: AppImages.onBoardingImage2,  title: AppTexts.onBoardingTitle2,subtitle: AppTexts.onBoardingSubTitle2,),
                OnboardingWidget(image: AppImages.onBoardingImage3,  title: AppTexts.onBoardingTitle3,subtitle: AppTexts.onBoardingSubTitle3,)
            ],
          ),

          
          //skip button
           const OnbaordingSkipButton(),
          // dot navigation smoothpageindicator
        const  OnboardingDotNavigation(),
        // circular button
       const OnboardingNextButton()
        ],
      ),
    );
  }
}








