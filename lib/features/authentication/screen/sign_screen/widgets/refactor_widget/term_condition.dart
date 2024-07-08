import 'package:flutter/material.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';
import 'package:professional_e_commerce/utils/constants/sizes.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (bool) {}),
          ),
          const SizedBox(
            width: AppSizes.spaceBtwItems,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: '${AppTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${AppTexts.privacyPolicy} ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                        color: dark
                            ? AppColors.white
                            : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark
                            ? AppColors.white
                            : AppColors.primary)),
            TextSpan(
                text: '${AppTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${AppTexts.termsOfUse} ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                        color: dark
                            ? AppColors.white
                            : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark
                            ? AppColors.white
                            : AppColors.primary)),
          ]))
        ],
      ),
    );
  }
}