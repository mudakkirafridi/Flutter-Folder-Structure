import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color iconColor;
  const CartCounterIcon({
    super.key,
    required this.onPressed,required this.iconColor

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag , color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(100)
          
            ),
            child: Center(
              child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white,fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}