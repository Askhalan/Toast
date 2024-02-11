//  avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:toast/utils/constants/sizes.dart';

ValueNotifier<int> selectedPage = ValueNotifier(0);

class NavigationBarController extends GetxController {
  static NavigationBarController get instance => Get.find();

  // variables
  final ScrollController scrollController = ScrollController();

  RxBool isVisible = true.obs; 
  // bool isScrollingDown = true;
  // Rx<int> selectedPage = 0.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(onScroll);
  }

  @override
  void onClose() {
    scrollController.removeListener(onScroll);
    super.onClose();
  }

  void onScroll() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      isVisible.value = false;
      print (isVisible.value);
      // isScrollingDown = false;
    } else if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      isVisible.value = true; // Change this to false when scrolling forward
      print (isVisible.value);
      // isScrollingDown = false;
    }
  }

   selectHome(){
    print('----------------------------slectHome function worked------------');
    selectedPage.value = 0;
    print(selectedPage.value);
    selectedPage.notifyListeners();
  }
   selectSearch(){
    print('----------------------------selectSearch function worked------------');
    selectedPage.value = 1;
    print(selectedPage.value);
    selectedPage.notifyListeners();
  }
   selectAddPost(){
    print('----------------------------selectAddPost function worked------------');
    selectedPage.value = 2;
    print(selectedPage.value);
    selectedPage.notifyListeners();
  }
   selectGrocessory(){
    print('----------------------------selectGrocessory function worked------------');
    selectedPage.value = 3;
    print(selectedPage.value);
    selectedPage.notifyListeners();
  }
   selectProfile(){
    print('----------------------------selectProfile function worked------------');
    selectedPage.value = 4;
    print(selectedPage.value);
    selectedPage.notifyListeners();
    
  }



  final screens = [
    Container(
      color: const Color.fromARGB(255, 255, 189, 7),
      child:  DemoForPages(color: Color.fromARGB(255, 66, 196, 157)),
    ),
    Container(
      color: const Color.fromARGB(255, 52, 255, 7),
      child:  DemoForPages(color: Color.fromARGB(255, 66, 196, 157)),
    ),
    Container(
      color: const Color.fromARGB(255, 7, 164, 255),
      child:  DemoForPages(color: Color.fromARGB(255, 66, 196, 157)),
    ),
    Container(
      color: const Color.fromARGB(255, 156, 7, 255),
      child:  DemoForPages(color: Color.fromARGB(255, 66, 196, 157)),
    ),
     Container(
      color: const Color.fromARGB(255, 255, 7, 160),
      child: DemoForPages(color: Color.fromARGB(255, 66, 196, 157)),
    ),
  ];




}

class DemoForPages extends StatelessWidget {
   DemoForPages({
    super.key, this.color,
  });
  
 final color;
 

  @override
  Widget build(BuildContext context) {
    // final controller = NavigationBarController();
    return ListView.builder(itemBuilder:(context, index,) {
      return Container(margin: const EdgeInsets.all(8),
      width: double.infinity,height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSize.borderRadLg),
        color:color, 
      ),);
    },
    // controller: controller.scrollController,
    );
  }
}
