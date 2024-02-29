// import 'package:toast/widgets/app_bar/custom_app_bar.dart';
// import 'package:toast/widgets/app_bar/appbar_leading_circleimage_one.dart';
// import 'package:toast/widgets/app_bar/appbar_title.dart';
// import 'package:toast/widgets/custom_elevated_button.dart';
// import 'package:toast/widgets/custom_icon_button.dart';
// import 'package:flutter/material.dart';
// import 'package:toast/core/app_export.dart';
// import 'controller/recipe_directions_view_controller.dart';

// class RecipeDirectionsViewScreen
//     extends GetWidget<RecipeDirectionsViewController> {
//   const RecipeDirectionsViewScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             appBar: _buildAppBar(),
//             body: SizedBox(
//                 width: double.maxFinite,
//                 child: Column(children: [
//                   SizedBox(height: 13.v),
//                   Expanded(
//                       child: SingleChildScrollView(
//                           child: Container(
//                               margin: EdgeInsets.only(bottom: 5.v),
//                               padding: EdgeInsets.symmetric(horizontal: 11.h),
//                               child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     CustomImageView(
//                                         imagePath: ImageConstant
//                                             .imgRectangle1249215x352,
//                                         height: 215.v,
//                                         width: 352.h,
//                                         radius: BorderRadius.circular(11.h)),
//                                     SizedBox(height: 18.v),
//                                     Padding(
//                                         padding: EdgeInsets.only(left: 4.h),
//                                         child: Text(
//                                             "msg_sandwich_with_boiled".tr,
//                                             style: theme.textTheme.titleLarge)),
//                                     SizedBox(height: 30.v),
//                                     _buildEight(),
//                                     SizedBox(height: 44.v),
//                                     Container(
//                                         width: 53.h,
//                                         margin: EdgeInsets.only(left: 6.h),
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 12.h, vertical: 2.v),
//                                         decoration: AppDecoration.fillOrange100
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder2),
//                                         child: Text("lbl_step_1".tr,
//                                             style: theme.textTheme.bodySmall)),
//                                     SizedBox(height: 9.v),
//                                     Align(
//                                         alignment: Alignment.centerRight,
//                                         child: Container(
//                                             width: 247.h,
//                                             margin: EdgeInsets.only(
//                                                 left: 74.h, right: 31.h),
//                                             child: Text(
//                                                 "msg_lorem_ipsum_dolor3".tr,
//                                                 maxLines: 4,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style: theme
//                                                     .textTheme.bodySmall))),
//                                     SizedBox(height: 29.v),
//                                     Container(
//                                         width: 53.h,
//                                         margin: EdgeInsets.only(left: 6.h),
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 10.h, vertical: 2.v),
//                                         decoration: AppDecoration.fillAmber
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder2),
//                                         child: Text("lbl_step_2".tr,
//                                             style: theme.textTheme.bodySmall)),
//                                     SizedBox(height: 9.v),
//                                     Align(
//                                         alignment: Alignment.centerRight,
//                                         child: Container(
//                                             width: 247.h,
//                                             margin: EdgeInsets.only(
//                                                 left: 74.h, right: 31.h),
//                                             child: Text(
//                                                 "msg_lorem_ipsum_dolor3".tr,
//                                                 maxLines: 4,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style: theme
//                                                     .textTheme.bodySmall))),
//                                     SizedBox(height: 29.v),
//                                     CustomElevatedButton(
//                                         height: 22.v,
//                                         width: 53.h,
//                                         text: "lbl_step_3".tr,
//                                         margin: EdgeInsets.only(left: 6.h),
//                                         buttonStyle: CustomButtonStyles
//                                             .fillSecondaryContainer,
//                                         buttonTextStyle:
//                                             theme.textTheme.bodySmall!),
//                                     SizedBox(height: 9.v),
//                                     Align(
//                                         alignment: Alignment.centerRight,
//                                         child: Container(
//                                             width: 247.h,
//                                             margin: EdgeInsets.only(
//                                                 left: 74.h, right: 31.h),
//                                             child: Text(
//                                                 "msg_lorem_ipsum_dolor3".tr,
//                                                 maxLines: 4,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style: theme
//                                                     .textTheme.bodySmall))),
//                                     SizedBox(height: 29.v),
//                                     Container(
//                                         width: 53.h,
//                                         margin: EdgeInsets.only(left: 6.h),
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 9.h, vertical: 2.v),
//                                         decoration: AppDecoration.fillOrange300
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder2),
//                                         child: Text("lbl_step_4".tr,
//                                             style: theme.textTheme.bodySmall)),
//                                     SizedBox(height: 9.v),
//                                     Align(
//                                         alignment: Alignment.centerRight,
//                                         child: Container(
//                                             width: 247.h,
//                                             margin: EdgeInsets.only(
//                                                 left: 74.h, right: 31.h),
//                                             child: Text(
//                                                 "msg_lorem_ipsum_dolor3".tr,
//                                                 maxLines: 4,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style: theme
//                                                     .textTheme.bodySmall))),
//                                     SizedBox(height: 29.v),
//                                     Container(
//                                         width: 53.h,
//                                         margin: EdgeInsets.only(left: 6.h),
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 9.h, vertical: 2.v),
//                                         decoration: AppDecoration.fillOrange400
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder2),
//                                         child: Text("lbl_step_5".tr,
//                                             style: theme.textTheme.bodySmall)),
//                                     SizedBox(height: 9.v),
//                                     Align(
//                                         alignment: Alignment.centerRight,
//                                         child: Container(
//                                             width: 247.h,
//                                             margin: EdgeInsets.only(
//                                                 left: 74.h, right: 31.h),
//                                             child: Text(
//                                                 "msg_lorem_ipsum_dolor3".tr,
//                                                 maxLines: 4,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style:
//                                                     theme.textTheme.bodySmall)))
//                                   ]))))
//                 ])),
//             bottomNavigationBar: _buildFrame()));
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar() {
//     return CustomAppBar(
//         leadingWidth: 53.h,
//         leading: AppbarLeadingCircleimageOne(
//             imagePath: ImageConstant.imgEllipse2034x37,
//             margin: EdgeInsets.only(left: 16.h)),
//         title: AppbarTitle(
//             text: "lbl_usernameaa".tr, margin: EdgeInsets.only(left: 12.h)));
//   }

//   /// Section Widget
//   Widget _buildEight() {
//     return Padding(
//         padding: EdgeInsets.only(left: 6.h, right: 4.h),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                 Text("lbl_directions".tr, style: theme.textTheme.titleLarge),
//                 SizedBox(height: 1.v),
//                 Text("msg_follow_the_steps".tr,
//                     style: CustomTextStyles.bodySmallGray60001)
//               ]),
//               CustomElevatedButton(
//                   width: 81.h,
//                   text: "lbl_5_steps".tr,
//                   margin: EdgeInsets.only(top: 3.v, bottom: 18.v),
//                   buttonStyle: CustomButtonStyles.none,
//                   decoration:
//                       CustomButtonStyles.gradientAmberToOrangeDecoration,
//                   buttonTextStyle: CustomTextStyles.bodySmall12)
//             ]));
//   }

//   /// Section Widget
//   Widget _buildFrame() {
//     return Padding(
//         padding: EdgeInsets.only(left: 21.h, right: 21.h, bottom: 60.v),
//         child:
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           CustomIconButton(
//               height: 47.v,
//               width: 60.h,
//               padding: EdgeInsets.all(16.h),
//               decoration: IconButtonStyleHelper.fillOrange,
//               onTap: () {
//                 onTapBtnArrowLeft();
//               },
//               child: CustomImageView(imagePath: ImageConstant.imgArrowLeft)),
//           CustomElevatedButton(
//               height: 47.v, width: 219.h, text: "lbl_add_a_review".tr)
//         ]));
//   }

//   /// Navigates to the recipeIngeridentsViewScreen when the action is triggered.
//   onTapBtnArrowLeft() {
//     Get.toNamed(
//       AppRoutes.recipeIngeridentsViewScreen,
//     );
//   }
// }
