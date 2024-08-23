
import 'package:flutter/material.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  final double? width , height;
   final double radius , padding ;

  final Widget? child;
  final Color backgroundColor;
  const CircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400 ,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = AppColors.white
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}