import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional_e_commerce/common/widgets/widget_login_sign/form_divider.dart';
import 'package:professional_e_commerce/common/widgets/widget_login_sign/social_button.dart';
import 'package:professional_e_commerce/features/authentication/screen/sign_screen/widgets/refactor_widget/sign_up_form.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';
import 'package:professional_e_commerce/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // text
              Text(
                AppTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              //form
              SignUpFormWidget(dark: dark),

              const SizedBox(height: AppSizes.spaceBtwSections,),

              // divider
              FormDivider(
                dark: dark,
                text: AppTexts.orSignInWith.capitalize!,
              ),

                const SizedBox(height: AppSizes.spaceBtwSections,),

                // social button

                const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}




