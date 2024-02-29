// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/add_optional_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'package:unicons/unicons.dart';

class AddOptionalGallery extends StatelessWidget {
  const AddOptionalGallery({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final AddOptionalController controller = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //---------------------------------------------------- TITLE TEXT ------------------------------------------------------
        Text(
          JTexts.galleryHeading,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const JGap(
          h: JmSize.spaceBtwInputFields * 0.5,
        ),

        //-------------------------------------------------- GALLERY SECTION ----------------------------------------------------

        Obx(() {
          return SizedBox(
              height: JFluid.percentHeight(context: context, percent: 15 * 2),
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: controller.itemCount.value,
                itemBuilder: (BuildContext context, int index) {
                  return index == controller.itemCount.value - 1
                      ? OptionalImageAddButton()
                      : controller.imageUploading.value
                          ? JShimmerEffect(
                              width: 50, height: 50)
                          : OptionalImageTile(
                              index: index,
                              url: controller.imageUrls[index],
                            );
                },
              ));
        }),
      ],
    );
  }
}

class OptionalImageTile extends StatelessWidget {
  const OptionalImageTile({
    super.key,
    required this.index,
    required this.url,
  });

  final int index;
  final String url;
  @override
  Widget build(BuildContext context) {
    final AddOptionalController controller = Get.find();
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(JSize.borderRadLg),
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: -5,
          right: -5,
          child: IconButton(
              onPressed: () {
                controller.removeItem(index);
              },
              icon: Icon(
                UniconsLine.trash,
                size: JSize.fontLg * 2,
                color: JColor.error,
              )),
        )
      ],
    );
  }
}

class OptionalImageAddButton extends StatelessWidget {
  const OptionalImageAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AddOptionalController controller = Get.find();
    return GestureDetector(
      onTap: () {
        controller.uploadOptionalImage();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(JSize.borderRadLg),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              UniconsLine.plus,
              size: JSize.fontLg * 2,
              color: JColor.black,
            ),
            Text(
              JTexts.add,
              style: TextStyle(
                color: JColor.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
