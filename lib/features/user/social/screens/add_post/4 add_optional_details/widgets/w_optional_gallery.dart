import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'package:unicons/unicons.dart';

class AddOptionalGallery extends StatelessWidget {
  const AddOptionalGallery({
    super.key,
  });
  final int itemCount = 4;
  @override
  Widget build(BuildContext context) {
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

        SizedBox(
            height: JFluid.percentHeight(context: context, percent: 15 * 2),
            width: double.infinity,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: itemCount,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(JSize.borderRadLg),
                      image: const DecorationImage(image: AssetImage(JImages.defaultImage),fit: BoxFit.cover)
                      ),
                      child: index == itemCount-1 ? const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         
                          Icon(UniconsLine.plus,size: JSize.fontLg*2,color: JColor.black,),
                           Text(JTexts.add,style: TextStyle(color: JColor.black,),),
                        ],
                      ) : null,

                );
              },
            )),
      ],
    );
  }
}
