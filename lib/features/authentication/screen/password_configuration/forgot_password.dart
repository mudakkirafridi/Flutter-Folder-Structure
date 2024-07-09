import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding:const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        // headings
        Text(AppTexts.forgetPasswordTitle , style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: AppSizes.spaceBtwItems,),
        Text(AppTexts.forgetPasswordSubTitle , style: Theme.of(context).textTheme.labelMedium,),
         const SizedBox(height: AppSizes.spaceBtwSections * 2),

        // text fields
        TextFormField(
          decoration:const InputDecoration(
            hintText: AppTexts.email,
            prefixIcon: Icon(Iconsax.direct_right)
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections,),

        // button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: ()=> Get.off(()=> const ForgotPassword()), child: const Text(AppTexts.submit)),
        )
          ],
        ),
        ),
    );
  }
}