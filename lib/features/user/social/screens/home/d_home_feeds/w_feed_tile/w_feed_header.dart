import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
// import 'package:toast/features/user/personalisation/model/user_model.dart';

class FeedsHeader extends StatelessWidget {
   FeedsHeader({
    super.key, required this.username, required this.image,
    //  required this.user,
  });
  final UserController userController = Get.find();
  final String username;
  final String image;

//  final  user;
  @override
  Widget build(BuildContext context) {
    return 
    // Obx((){

    // return 
     Row(
        children: [
            CircleAvatar(
            backgroundImage:NetworkImage(image),
          ),
          const JGap(
            w: 15.0,
          ),
          Text(
            // user.value.username,
            username,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      );}
    // );
  // }
}
