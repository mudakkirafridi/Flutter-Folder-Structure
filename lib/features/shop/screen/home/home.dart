import 'package:flutter/material.dart';
import 'package:professional_e_commerce/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:professional_e_commerce/features/shop/screen/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}








