import 'package:flutter/material.dart';
import 'package:professional_e_commerce/common/widgets/custom_shape/curved_edges/curved_edges.dart';

class CustomCurvedEdgeWidget extends StatelessWidget {
  final Widget? child;
  const CustomCurvedEdgeWidget({
    super.key,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}