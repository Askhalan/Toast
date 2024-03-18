import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
// import 'package:toast/features/user/personalisation/model/user_model.dart';

class FeedsHeader extends StatelessWidget {
   FeedsHeader({
    super.key,
    //  required this.user,
  });
  final UserController userController = Get.find();

//  final  user;
  @override
  Widget build(BuildContext context) {
    return 
    // Obx((){

    // return 
     Row(
        children: [
           const CircleAvatar(
            // backgroundImage:NetworkImage(user.value.profilePic),
          ),
          const JGap(
            w: 30.0,
          ),
          Text(
            // user.value.username,
            ' Ajsal',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      );}
    // );
  // }
}
