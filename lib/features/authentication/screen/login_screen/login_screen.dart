import 'package:flutter/material.dart';
import 'package:professional_e_commerce/common/styles/app_spacing_style.dart';
import 'package:professional_e_commerce/common/widgets/widget_login_sign/form_divider.dart';
import 'package:professional_e_commerce/common/widgets/widget_login_sign/social_button.dart';
import 'package:professional_e_commerce/features/authentication/screen/login_screen/widgets/login_form.dart';
import 'package:professional_e_commerce/features/authentication/screen/login_screen/widgets/login_header.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              //logo title , and subtitle
              LoginHeader(dark: dark),
              //form
             const LoginForm(),

              // divider
              FormDivider(dark: dark),

              // spacing
                const SizedBox(
                      height: AppSizes.spaceBtwSections,
                    ),

              // footer
             const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}





