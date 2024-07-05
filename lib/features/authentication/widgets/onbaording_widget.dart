import 'package:flutter/material.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/helpers/helper_functions.dart';

class OnboardingWidget extends StatelessWidget {
 final String image , title , subtitle ;
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: AppHelperFunctions.screenWidth() * 0.8,
              height: AppHelperFunctions.screenHeight() * 0.6,
              image:  AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems,),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}