// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/dhi_widgets/custom_checkbox_button.dart';
import 'package:toast/common/app/dhi_widgets/custom_elevated_button.dart';
import 'package:toast/common/app/dhi_widgets/custom_floating_button.dart';
import 'package:toast/common/app/dhi_widgets/custom_icon_button.dart';
import 'package:toast/common/app/dhi_widgets/custom_image_view.dart';

class RecipeIngeridentsViewScreen {
  const RecipeIngeridentsViewScreen({Key? key});

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 13),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 109),
                                  padding: EdgeInsets.symmetric(horizontal: 11),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: '',
                                            height: 215,
                                            width: 352,
                                            radius: BorderRadius.circular(11)),
                                        SizedBox(height: 19),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4),
                                            child: Text(
                                                "msg_sandwich_with_boiled",
                                                style: TextStyle())),
                                        SizedBox(height: 24),
                                        Padding(
                                            padding: EdgeInsets.only(left: 6),
                                            child: Text("lbl_ingredients",
                                                style: TextStyle())),
                                        Padding(
                                            padding: EdgeInsets.only(left: 6),
                                            child: Text(
                                                "msg_please_prepare_the",
                                                style: TextStyle())),
                                        SizedBox(height: 25),
                                        _buildFrame(),
                                        SizedBox(height: 16),
                                        _buildFrame1(),
                                        SizedBox(height: 16),
                                        _buildFrame2(),
                                        SizedBox(height: 16),
                                        _buildFrame3(),
                                        SizedBox(height: 16),
                                        _buildFrame4(),
                                        SizedBox(height: 16),
                                        _buildFrame5(),
                                        SizedBox(height: 16),
                                        _buildFrame6(),
                                        SizedBox(height: 16),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.only(left: 7),
                                            color: Colors.amber,
                                            shape: RoundedRectangleBorder(),
                                            // borderRadius: ,
                                            child: Container(
                                                height: 49,
                                                width: 278,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                    vertical: 13),
                                                // decoration: ,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      _buildIngeridentOne(),
                                                      _buildCup()
                                                    ])))
                                      ]))))
                    ])),
            bottomNavigationBar: _buildFrame7(),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: Colors.amber,
              // shape: RoundedRectangleBorder(
              // borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Container(
                  height: 49,
                  width: 278,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  // decoration: AppDecoration.fillBlueGray
                  //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.bottomCenter,
                            text: "lbl_ingerident_1".tr,
                            // value: controller.ingeridentOne.value,
                            onChange: (value) {
                              // controller.ingeridentOne.value = value;
                            }))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.centerRight,
                            width: 75,
                            text: "lbl_1_4_cup".tr,
                            // value: controller.cup.value,
                            // textStyle: theme.textTheme.bodySmall,
                            isRightCheck: true,
                            onChange: (value) {
                              // controller.cup.value = value;
                            })))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomIconButton(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(13),
                  child: CustomImageView(imagePath: '')))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: Colors.amber,
              // shape: RoundedRectangleBorder(
              // borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Container(
                  height: 49,
                  width: 278,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  // decoration: AppDecoration.fillBlueGray
                  //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.bottomCenter,
                            text: "lbl_ingerident_2".tr,
                            // value: controller.ingeridentTwo.value,
                            onChange: (value) {
                              // controller.ingeridentTwo.value = value;
                            }))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.centerRight,
                            width: 75,
                            text: "lbl_1_4_cup".tr,
                            // value: controller.cup1.value,
                            // textStyle: theme.textTheme.bodySmall,
                            isRightCheck: true,
                            onChange: (value) {
                              // controller.cup1.value = value;
                            })))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomIconButton(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(13),
                  child: CustomImageView(imagePath: '')))
        ]));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              // color: appTheme.blueGray50,
              // shape: RoundedRectangleBorder(
              // borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Container(
                  height: 49,
                  width: 278,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  // decoration: AppDecoration.fillBlueGray
                  //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.bottomCenter,
                            text: "lbl_ingerident_1".tr,
                            // value: controller.ingeridentOne1.value,
                            onChange: (value) {
                              // controller.ingeridentOne1.value = value;
                            }))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.centerRight,
                            width: 75,
                            text: "lbl_1_4_cup".tr,
                            // value: controller.cup2.value,
                            // textStyle: theme.textTheme.bodySmall,
                            isRightCheck: true,
                            onChange: (value) {
                              // controller.cup2.value = value;
                            })))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomIconButton(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(13),
                  child: CustomImageView(imagePath: '')))
        ]));
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              // color: appTheme.blueGray50,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Container(
                  height: 49,
                  width: 278,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  // decoration: AppDecoration.fillBlueGray
                  //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.bottomCenter,
                            text: "lbl_ingerident_1".tr,
                            // value: controller.ingeridentOne2.value,
                            onChange: (value) {
                              // controller.ingeridentOne2.value = value;
                            }))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.centerRight,
                            width: 75,
                            text: "lbl_1_4_cup".tr,
                            // value: controller.cup3.value,
                            // textStyle: theme.textTheme.bodySmall,
                            isRightCheck: true,
                            onChange: (value) {
                              // controller.cup3.value = value;
                            })))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomIconButton(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(13),
                  child: CustomImageView(imagePath: '')))
        ]));
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              // color: appTheme.blueGray50,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Container(
                  height: 49,
                  width: 278,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  // decoration: AppDecoration.fillBlueGray
                  //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.bottomCenter,
                            text: "lbl_ingerident_1".tr,
                            // value: controller.ingeridentOne3.value,
                            onChange: (value) {
                              // controller.ingeridentOne3.value = value;
                            }))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.centerRight,
                            width: 75,
                            text: "lbl_1_4_cup".tr,
                            // value: controller.cup4.value,
                            // textStyle: theme.textTheme.bodySmall,
                            isRightCheck: true,
                            onChange: (value) {
                              // controller.cup4.value = value;
                            })))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomIconButton(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(13),
                  child: CustomImageView(imagePath: '')))
        ]));
  }

  /// Section Widget
  Widget _buildFrame5() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              // color: appTheme.blueGray50,
              // shape: RoundedRectangleBorder(
              // borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Container(
                  height: 49,
                  width: 278,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  // decoration: AppDecoration.fillBlueGray
                  // .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.bottomCenter,
                            text: "lbl_ingerident_1".tr,
                            // value: controller.ingeridentOne4.value,
                            onChange: (value) {
                              // controller.ingeridentOne4.value = value;
                            }))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.centerRight,
                            width: 75,
                            text: "lbl_1_4_cup".tr,
                            // value/: controller.cup5.value,
                            // textStyle: theme.textTheme.bodySmall,
                            isRightCheck: true,
                            onChange: (value) {
                              // controller.cup5.value = value;
                            })))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomIconButton(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(13),
                  child: CustomImageView(imagePath: '')))
        ]));
  }

  /// Section Widget
  Widget _buildFrame6() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              // color: appTheme.blueGray50,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Container(
                  height: 49,
                  width: 278,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  // decoration: AppDecoration.fillBlueGray
                  // .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.bottomCenter,
                            text: "lbl_ingerident_1".tr,
                            // value: controller.ingeridentOne5.value,
                            onChange: (value) {
                              // controller.ingeridentOne5.value = value;
                            }))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => CustomCheckboxButton(
                            alignment: Alignment.centerRight,
                            width: 75,
                            text: "lbl_1_4_cup".tr,
                            // value: controller.cup6.value,
                            // textStyle: theme.textTheme.bodySmall,
                            isRightCheck: true,
                            onChange: (value) {
                              // controller.cup6.value = value;
                            })))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 12),
              child: CustomIconButton(
                  height: 49,
                  width: 49,
                  padding: EdgeInsets.all(13),
                  child: CustomImageView(imagePath: '')))
        ]));
  }

  /// Section Widget
  Widget _buildIngeridentOne() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.bottomCenter,
            text: "lbl_ingerident_1".tr,
            // value: controller.ingeridentOne6.value,
            onChange: (value) {
              // controller.ingeridentOne6.value = value;
            })));
  }

  /// Section Widget
  Widget _buildCup() {
    return Align(
        alignment: Alignment.centerRight,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            width: 75,
            text: "lbl_1_4_cup".tr,
            // value: controller.cup7.value,
            // textStyle: theme.textTheme.bodySmall,
            isRightCheck: true,
            onChange: (value) {
              // controller.cup7.value = value;
            })));
  }

  /// Section Widget
  Widget _buildFrame7() {
    return Padding(
        padding: EdgeInsets.only(left: 43, right: 22, bottom: 25),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              height: 13,
              width: 16,
              // margin: EdgeInsets.symmetric(vertical: 16.v),
              // decoration: AppDecoration.fillOrange100
              //     .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: CustomImageView(
                  imagePath: '',
                  height: 13,
                  width: 16,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgArrowLeft();
                  })),
          Expanded(
              child: CustomElevatedButton(
                  height: 47,
                  text: "lbl_next".tr,
                  margin: EdgeInsets.only(left: 74),
                  rightIcon: Container(
                      margin: EdgeInsets.only(left: 12),
                      child: CustomImageView(
                          imagePath: '', height: 12, width: 12)),
                  // buttonTextStyle: CustomTextStyles.labelLargeRed50,
                  onPressed: () {
                    onTapNext();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 49,
        width: 49,
        // backgroundColor: appTheme.blueGray50,
        child: CustomImageView(imagePath: '', height: 24.5, width: 24.5));
  }

  /// Navigates to the recipeViewScreen when the action is triggered.
  onTapImgArrowLeft() {
    // Get.toNamed(
    //   AppRoutes.recipeViewScreen,
    // );
  }

  /// Navigates to the recipeDirectionsViewScreen when the action is triggered.
  onTapNext() {
    // Get.toNamed(
    //   // AppRoutes.recipeDirectionsViewScreen,
    // );
  }
}
