import 'package:flutter/material.dart';
import 'package:professional_e_commerce/common/styles/app_spacing_style.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';
import 'package:professional_e_commerce/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  final String  image ,  title , subtitle ;
  final VoidCallback onPressed;
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
               // image
              Image(
                image:  AssetImage(image),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // title & subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // button
              SizedBox(width: double.infinity, child: TextButton(onPressed: onPressed, child: const Text(AppTexts.resendEmail)),),
            ],
          ),
          ),
      ),
    );
  }
}