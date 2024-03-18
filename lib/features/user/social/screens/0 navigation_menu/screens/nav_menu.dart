import 'package:flutter/material.dart';
import 'w_navigation_bar.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({
    super.key,
  });

  @override
  State<NavigationMenu> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NavigationMenu>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavBar(
        tabController: tabController,
        currentPage: currentPage,
      ),
    );
  }
}



// class NavigationMenu extends StatelessWidget {
//    NavigationMenu({super.key});

//   final NavigationBarController navcontroller = Get.put(NavigationBarController());

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder(builder: (controller) => NavBar(tabController: navcontroller.tabController, currentPage: navcontroller.currentPage.value,),);
//   }
// }