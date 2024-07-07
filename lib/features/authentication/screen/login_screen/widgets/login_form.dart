import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBtwSections),
      child: Column(
        children: [
          // email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          // password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: AppTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields / 2),
          // remember me and forgor password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  const Text(AppTexts.rememberMe)
                ],
              ),
              // forgot password
              TextButton(
                  onPressed: () {},
                  child: const Text(AppTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          // sign button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(AppTexts.signIn))),
          // create account button
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(AppTexts.createAccount))),
          
        ],
      ),
    ));
  }
}
