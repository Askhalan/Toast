// import '../models/recipeview_item_model.dart';
// import '../controller/recipe_view_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:toast/core/app_export.dart';

// // ignore: must_be_immutable
// class RecipeviewItemWidget extends StatelessWidget {
//   RecipeviewItemWidget(
//     this.recipeviewItemModelObj, {
//     Key? key,
//   }) : super(
//           key: key,
//         );

//   RecipeviewItemModel recipeviewItemModelObj;

//   var controller = Get.find<RecipeViewController>();

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 110.v,
//       width: 96.h,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Obx(
//             () => CustomImageView(
//               imagePath: recipeviewItemModelObj.mayonnaise!.value,
//               height: 110.v,
//               width: 96.h,
//               radius: BorderRadius.circular(
//                 7.h,
//               ),
//               alignment: Alignment.center,
//             ),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 10.h,
//                 vertical: 8.v,
//               ),
//               decoration: AppDecoration.fillGray.copyWith(
//                 borderRadius: BorderRadiusStyle.roundedBorder6,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 2.v),
//                   Obx(
//                     () => CustomImageView(
//                       imagePath: recipeviewItemModelObj.mayonnaise1!.value,
//                       height: 57.v,
//                       width: 75.h,
//                       radius: BorderRadius.circular(
//                         4.h,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 6.v),
//                   Obx(
//                     () => Text(
//                       recipeviewItemModelObj.mayonnaise2!.value,
//                       style: theme.textTheme.bodySmall,
//                     ),
//                   ),
//                   Obx(
//                     () => Text(
//                       recipeviewItemModelObj.cup!.value,
//                       style: CustomTextStyles.bodySmall8,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
