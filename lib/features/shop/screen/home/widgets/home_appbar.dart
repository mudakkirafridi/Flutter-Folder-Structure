import 'package:flutter/material.dart';
import 'package:professional_e_commerce/common/widgets/appbar/appbar.dart';
import 'package:professional_e_commerce/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';
import 'package:professional_e_commerce/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey),),
          Text(AppTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),),
        ],
      ),
      actins:  [
        CartCounterIcon(onPressed: () {}, iconColor: AppColors.white,)
      ],
    );
  }
}