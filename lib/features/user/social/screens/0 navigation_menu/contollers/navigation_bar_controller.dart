//  avoid_print

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// ValueNotifier<int> selectedPage = ValueNotifier(0);

// class NavigationBarController extends GetxController {
//   static NavigationBarController get instance => Get.find();

//   // variables
//   final ScrollController scrollController = ScrollController();

//   RxBool isVisible = true.obs; 
//   // bool isScrollingDown = true;
//   // Rx<int> selectedPage = 0.obs;

//   final RxInt currentPage=0.obs;
//   late TabController tabController;

//   @override
//   void onInit() {
//     tabController = TabController(length: 5,vsync: this);
//     tabController.animation!.addListener(
//       () {
//         final value = tabController.animation!.value.round();
//         if (value != currentPage.value) {
//           changePage(value);
//         }
//       },
//     );
//     super.onInit();
    
//   }
//   void changePage(int newPage) {
//       currentPage.value = newPage;
   
//   }
//   @override
//   void onClose() {
//     tabController.dispose();
//     super.onClose();
//   }

  
// }
