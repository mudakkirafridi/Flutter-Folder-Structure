
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional_e_commerce/features/authentication/screen/onboarding_screen/onboarding.dart';
import 'package:professional_e_commerce/features/authentication/screen/sign_screen/verify_email.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';
import 'package:professional_e_commerce/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return GetMaterialApp(
      title: AppTexts.appName,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const VerifyEmailScreen() ,
    );
  }
}
