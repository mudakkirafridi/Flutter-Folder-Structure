import 'package:flutter/material.dart';
import 'package:professional_e_commerce/common/widgets/custom_shape/containers/cicular_container.dart';
import 'package:professional_e_commerce/common/widgets/custom_shape/curved_edges/curved_edge_widget.dart';
import 'package:professional_e_commerce/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const PrimaryHeaderContainer({
    super.key,
   required this.child
  });

  @override
  Widget build(BuildContext context) {
    return CustomCurvedEdgeWidget(
      child: Container(
            color: AppColors.primary,
            padding: const EdgeInsets.only(bottom: 0),
            child: Stack(
                children: [
                  // background custom shapes
                  Positioned(top: -150 , right:  -250 ,child: CircularContainer(backgroundColor:  AppColors.textWhite.withOpacity(0.1),)),
                   Positioned(top: 100 , right: -300,child: CircularContainer(backgroundColor:  AppColors.textWhite.withOpacity(0.1),)),
                  child,   
                ],
            ),
          ),
    );
  }
}
