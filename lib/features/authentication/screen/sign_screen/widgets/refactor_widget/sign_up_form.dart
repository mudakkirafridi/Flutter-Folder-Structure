import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:professional_e_commerce/features/authentication/screen/sign_screen/widgets/refactor_widget/term_condition.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwInputFields,
        ),
    
        // username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: AppTexts.username,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwInputFields,
        ),
    
        // email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwInputFields,
        ),
    
        // phone number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call)),
        ),
    
        const SizedBox(
          height: AppSizes.spaceBtwInputFields,
        ),
    
        // password
        TextFormField(
          obscureText: true,
          expands: false,
          decoration: const InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
    
        const SizedBox(
          height: AppSizes.spaceBtwInputFields,
        ),
    
        // terms and condition
        TermsAndConditionWidget(dark: dark),
        const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
    
        // button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppTexts.createAccount)),
        )
      ],
    ));
  }
}