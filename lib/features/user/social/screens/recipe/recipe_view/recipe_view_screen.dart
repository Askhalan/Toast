// import 'package:toast/widgets/app_bar/custom_app_bar.dart';
// import 'package:toast/widgets/app_bar/appbar_leading_circleimage.dart';
// import 'package:toast/widgets/app_bar/appbar_subtitle.dart';
// import 'widgets/recipeview_item_widget.dart';
// import 'models/recipeview_item_model.dart';
// import 'package:toast/widgets/custom_elevated_button.dart';
// import 'package:toast/widgets/custom_rating_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:toast/core/app_export.dart';
// import 'controller/recipe_view_controller.dart';

// class RecipeViewScreen extends GetWidget<RecipeViewController> {
//   const RecipeViewScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: SizedBox(
//                 width: double.maxFinite,
//                 child: Column(children: [
//                   _buildNineteen(),
//                   SizedBox(height: 25.v),
//                   Expanded(
//                       child: SingleChildScrollView(
//                           child: Container(
//                               margin: EdgeInsets.only(bottom: 5.v),
//                               padding: EdgeInsets.symmetric(horizontal: 20.h),
//                               child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Padding(
//                                         padding: EdgeInsets.only(left: 2.h),
//                                         child: Text(
//                                             "msg_sandwich_with_boiled".tr,
//                                             style: theme.textTheme.titleLarge)),
//                                     SizedBox(height: 7.v),
//                                     Container(
//                                         width: 291.h,
//                                         margin: EdgeInsets.only(
//                                             left: 9.h, right: 34.h),
//                                         child: Text("msg_lorem_ipsum_dolor".tr,
//                                             maxLines: 3,
//                                             overflow: TextOverflow.ellipsis,
//                                             style: CustomTextStyles
//                                                 .bodyMediumOnPrimary)),
//                                     SizedBox(height: 24.v),
//                                     _buildSixteen(),
//                                     SizedBox(height: 13.v),
//                                     _buildRecipeView(),
//                                     SizedBox(height: 36.v),
//                                     _buildFifteen(),
//                                     SizedBox(height: 19.v),
//                                     _buildFour(),
//                                     SizedBox(height: 21.v),
//                                     _buildComment2(),
//                                     SizedBox(height: 21.v),
//                                     _buildComment3()
//                                   ]))))
//                 ])),
//             bottomNavigationBar: _buildStartCooking()));
//   }

//   /// Section Widget
//   Widget _buildNineteen() {
//     return SizedBox(
//         height: 335.v,
//         width: double.maxFinite,
//         child: Stack(alignment: Alignment.bottomCenter, children: [
//           Align(
//               alignment: Alignment.topCenter,
//               child: SizedBox(
//                   height: 306.v,
//                   width: double.maxFinite,
//                   child: Stack(alignment: Alignment.topCenter, children: [
//                     CustomImageView(
//                         imagePath: ImageConstant.imgRectangle1249,
//                         height: 306.v,
//                         width: 375.h,
//                         radius: BorderRadius.vertical(
//                             bottom: Radius.circular(11.h)),
//                         alignment: Alignment.center),
//                     CustomAppBar(
//                         height: 41.v,
//                         leadingWidth: 43.h,
//                         leading: AppbarLeadingCircleimage(
//                             imagePath: ImageConstant.imgEllipse20,
//                             margin: EdgeInsets.only(
//                                 left: 12.h, top: 2.v, bottom: 3.v)),
//                         title: AppbarSubtitle(
//                             text: "lbl_usernameaa".tr,
//                             margin: EdgeInsets.only(left: 6.h)),
//                         styleType: Style.bgFill)
//                   ]))),
//           Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                   margin: EdgeInsets.only(left: 39.h, top: 276.v, right: 39.h),
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 13.h, vertical: 3.v),
//                   decoration: AppDecoration.fillOrange
//                       .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
//                   child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Padding(
//                             padding: EdgeInsets.only(top: 5.v),
//                             child: _buildTwelve(
//                                 foHotTrend: ImageConstant.imgClock,
//                                 cal: "lbl_30_min".tr)),
//                         Spacer(flex: 29),
//                         Padding(
//                             padding: EdgeInsets.only(top: 4.v),
//                             child: Column(children: [
//                               CustomImageView(
//                                   imagePath: ImageConstant.imgOffer,
//                                   height: 28.adaptSize,
//                                   width: 28.adaptSize,
//                                   alignment: Alignment.centerRight,
//                                   margin: EdgeInsets.only(right: 6.h)),
//                               SizedBox(height: 4.v),
//                               Text("lbl_4_5_rating".tr,
//                                   style: theme.textTheme.bodySmall)
//                             ])),
//                         Spacer(flex: 36),
//                         Padding(
//                             padding: EdgeInsets.only(top: 7.v),
//                             child: Column(children: [
//                               CustomImageView(
//                                   imagePath: ImageConstant.imgThumbsUp,
//                                   height: 22.v,
//                                   width: 20.h),
//                               SizedBox(height: 7.v),
//                               Text("lbl_easy".tr,
//                                   style: theme.textTheme.bodySmall)
//                             ])),
//                         Spacer(flex: 33),
//                         Padding(
//                             padding: EdgeInsets.only(top: 5.v, right: 8.h),
//                             child: _buildTwelve(
//                                 foHotTrend: ImageConstant.imgFoHotTrend,
//                                 cal: "lbl_150_cal".tr))
//                       ])))
//         ]));
//   }

//   /// Section Widget
//   Widget _buildSixteen() {
//     return Padding(
//         padding: EdgeInsets.only(left: 3.h, right: 2.h),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("lbl_ingredients".tr, style: theme.textTheme.titleLarge),
//               Container(
//                   width: 81.h,
//                   margin: EdgeInsets.only(bottom: 5.v),
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 14.h, vertical: 1.v),
//                   decoration: AppDecoration.fillBlueGray
//                       .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
//                   child: Text("lbl_2_serving".tr,
//                       style: CustomTextStyles.bodySmall12))
//             ]));
//   }

//   /// Section Widget
//   Widget _buildRecipeView() {
//     return Padding(
//         padding: EdgeInsets.only(left: 3.h, right: 2.h),
//         child: Obx(() => GridView.builder(
//             shrinkWrap: true,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 mainAxisExtent: 111.v,
//                 crossAxisCount: 3,
//                 mainAxisSpacing: 21.h,
//                 crossAxisSpacing: 21.h),
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: controller
//                 .recipeViewModelObj.value.recipeviewItemList.value.length,
//             itemBuilder: (context, index) {
//               RecipeviewItemModel model = controller
//                   .recipeViewModelObj.value.recipeviewItemList.value[index];
//               return RecipeviewItemWidget(model);
//             })));
//   }

//   /// Section Widget
//   Widget _buildFifteen() {
//     return Padding(
//         padding: EdgeInsets.only(left: 3.h, right: 2.h),
//         child:
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Text("lbl_reviews".tr, style: theme.textTheme.titleLarge),
//           CustomElevatedButton(
//               width: 53.h,
//               text: "lbl_4_5".tr,
//               margin: EdgeInsets.symmetric(vertical: 2.v),
//               rightIcon: Container(
//                   margin: EdgeInsets.only(left: 2.h),
//                   child: CustomImageView(
//                       imagePath: ImageConstant.imgSignal,
//                       height: 11.adaptSize,
//                       width: 11.adaptSize)),
//               buttonStyle: CustomButtonStyles.fillBlueGray,
//               buttonTextStyle: theme.textTheme.bodyMedium!)
//         ]));
//   }

//   /// Section Widget
//   Widget _buildFour() {
//     return Container(
//         margin: EdgeInsets.only(right: 2.h),
//         padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
//         decoration: AppDecoration.fillGray100
//             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                   padding: EdgeInsets.only(left: 5.h),
//                   child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CustomImageView(
//                             imagePath: ImageConstant.imgRectangle91,
//                             height: 30.adaptSize,
//                             width: 30.adaptSize,
//                             radius: BorderRadius.circular(15.h),
//                             margin: EdgeInsets.only(bottom: 10.v)),
//                         Padding(
//                             padding: EdgeInsets.only(left: 9.h, top: 6.v),
//                             child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("lbl_josh".tr,
//                                       style: theme.textTheme.labelMedium),
//                                   SizedBox(height: 7.v),
//                                   CustomRatingBar(initialRating: 0)
//                                 ]))
//                       ])),
//               SizedBox(height: 14.v),
//               Align(
//                   alignment: Alignment.centerRight,
//                   child: Padding(
//                       padding: EdgeInsets.only(left: 43.h),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("lbl_add_your_review".tr,
//                                 style: CustomTextStyles.bodySmallGray700),
//                             SizedBox(
//                                 height: 15.v,
//                                 width: 51.h,
//                                 child: Stack(
//                                     alignment: Alignment.center,
//                                     children: [
//                                       Align(
//                                           alignment: Alignment.center,
//                                           child: Container(
//                                               height: 15.v,
//                                               width: 51.h,
//                                               decoration: BoxDecoration(
//                                                   color: appTheme.orange100,
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           4.h)))),
//                                       Align(
//                                           alignment: Alignment.center,
//                                           child: Text("lbl_share".tr,
//                                               style: theme.textTheme.bodySmall))
//                                     ]))
//                           ]))),
//               SizedBox(height: 7.v)
//             ]));
//   }

//   /// Section Widget
//   Widget _buildComment2() {
//     return Padding(
//         padding: EdgeInsets.only(left: 3.h, right: 17.h),
//         child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           CustomImageView(
//               imagePath: ImageConstant.imgRectangle9130x30,
//               height: 30.adaptSize,
//               width: 30.adaptSize,
//               radius: BorderRadius.circular(15.h),
//               margin: EdgeInsets.only(bottom: 206.v)),
//           Expanded(
//               child: Padding(
//                   padding: EdgeInsets.only(left: 9.h, top: 6.v),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("lbl_michael".tr,
//                             style: theme.textTheme.labelMedium),
//                         SizedBox(height: 7.v),
//                         CustomRatingBar(initialRating: 0),
//                         SizedBox(height: 7.v),
//                         Container(
//                             width: 263.h,
//                             margin: EdgeInsets.only(right: 12.h),
//                             child: Text("msg_lorem_ipsum_dolor2".tr,
//                                 maxLines: 4,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: CustomTextStyles.bodySmallGordita
//                                     .copyWith(height: 1.60))),
//                         SizedBox(height: 8.v),
//                         CustomImageView(
//                             imagePath: ImageConstant.imgRectangle126,
//                             height: 116.v,
//                             width: 276.h,
//                             radius: BorderRadius.circular(10.h))
//                       ])))
//         ]));
//   }

//   /// Section Widget
//   Widget _buildComment3() {
//     return Padding(
//         padding: EdgeInsets.only(right: 23.h),
//         child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           CustomImageView(
//               imagePath: ImageConstant.imgRectangle911,
//               height: 30.adaptSize,
//               width: 30.adaptSize,
//               radius: BorderRadius.circular(15.h),
//               margin: EdgeInsets.only(bottom: 66.v)),
//           Expanded(
//               child: Padding(
//                   padding: EdgeInsets.only(left: 9.h, top: 6.v),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("lbl_josh".tr, style: theme.textTheme.labelMedium),
//                         SizedBox(height: 7.v),
//                         CustomRatingBar(initialRating: 0),
//                         SizedBox(height: 7.v),
//                         SizedBox(
//                             width: 272.h,
//                             child: Text("msg_ullamco_laboris".tr,
//                                 maxLines: 3,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: CustomTextStyles.bodySmallGordita
//                                     .copyWith(height: 1.60)))
//                       ])))
//         ]));
//   }

//   /// Section Widget
//   Widget _buildStartCooking() {
//     return CustomElevatedButton(
//         height: 46.v,
//         text: "lbl_start_cooking".tr,
//         margin: EdgeInsets.only(left: 23.h, right: 22.h, bottom: 21.v),
//         onPressed: () {
//           onTapStartCooking();
//         });
//   }

//   /// Common widget
//   Widget _buildTwelve({
//     required String foHotTrend,
//     required String cal,
//   }) {
//     return Column(children: [
//       CustomImageView(
//           imagePath: foHotTrend, height: 26.adaptSize, width: 26.adaptSize),
//       SizedBox(height: 3.v),
//       Text(cal,
//           style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))
//     ]);
//   }

//   /// Navigates to the recipeIngeridentsViewScreen when the action is triggered.
//   onTapStartCooking() {
//     Get.toNamed(
//       AppRoutes.recipeIngeridentsViewScreen,
//     );
//   }
// }
