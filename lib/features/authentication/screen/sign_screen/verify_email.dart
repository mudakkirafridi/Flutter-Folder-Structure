import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional_e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:professional_e_commerce/features/authentication/screen/login_screen/login_screen.dart';
import 'package:professional_e_commerce/utils/constants/image_strings.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';
import 'package:professional_e_commerce/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // image
              Image(
                image: const AssetImage(AppImages.deliveredEmailIllustration),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // title & subtitle
              Text(
                AppTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                'mudakkirafridi@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                AppTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(()=> SuccessScreen(
              image: AppImages.staticSuccessIllustration,
              onPressed: ()=> Get.to(const LoginScreen()),
              subtitle: AppTexts.yourAccountCreatedSubTitle,
              title: AppTexts.yourAccountCreatedTitle,
            )), child: const Text(AppTexts.tContinue)),),
            const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
            SizedBox(width: double.infinity, child: TextButton(onPressed: ()=> null, child: const Text(AppTexts.resendEmail)),),  
            ],
          ),
        ),
      ),
    );
  }
}
