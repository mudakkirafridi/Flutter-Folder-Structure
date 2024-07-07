import 'package:flutter/material.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';
import 'package:professional_e_commerce/utils/constants/image_strings.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(100)
        ),
          child: IconButton(onPressed: (){}, icon:const Image(
            height: AppSizes.iconMd,
           width: AppSizes.iconMd,
            image: AssetImage(AppImages.google)),
        )),
        const SizedBox(
            width: AppSizes.spaceBtwItems,
          ),
        Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(100)
        ),
          child: IconButton(onPressed: (){}, icon:const Image(
            height: AppSizes.iconMd,
           width: AppSizes.iconMd,
            image: AssetImage(AppImages.facebook)),
        )),
      ],
    );
  }
}