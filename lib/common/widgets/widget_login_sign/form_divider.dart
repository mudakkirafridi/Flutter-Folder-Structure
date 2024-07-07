import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 1.0,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(AppTexts.orSignUpWith.capitalize! , style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 1.0,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}