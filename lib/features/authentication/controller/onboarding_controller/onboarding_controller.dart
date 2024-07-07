
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:professional_e_commerce/features/authentication/screen/login_screen/login_screen.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  //update current index when page scroll 
  void updatePageIndicator(index) => currentPageIndex.value = index;


// jump to the specific dot when page scroll
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

// update current index & jump to the next screen
  void nextPage(){
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
pageController.jumpToPage(page);
    }
  }

 // update current index & jump to the last screen 
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}