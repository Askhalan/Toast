import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/helpers/helper_functions.dart';
import 'package:unicons/unicons.dart';

import '../../../../../utils/constants/colors.dart';

class PostShimmer extends StatelessWidget {
  const PostShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          surfaceTintColor: Colors.transparent,
          // elevation: 0.7,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              //--------------------------------------- FEEDS HEADER SECTION --------------------------------------------

              Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: isDark ? Colors.grey[850]! : Colors.grey[300]!,
                    highlightColor:
                        isDark ? Colors.grey[700]! : Colors.grey[100]!,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(''),
                    ),
                  ),
                  const JGap(
                    w: 30.0,
                  ),
                  Shimmer.fromColors(
                    baseColor: isDark ? Colors.grey[850]! : Colors.grey[300]!,
                    highlightColor:
                        isDark ? Colors.grey[700]! : Colors.grey[100]!,
                    child: Text(
                      'Gladys',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                ],
              ),

              //---------------------------------------- FEEDS BODY  SECTION --------------------------------------------

              const JGap(h: JmSize.spaceBtwItems * 0.7),
              Shimmer.fromColors(
                baseColor: isDark ? Colors.grey[850]! : Colors.grey[300]!,
                highlightColor: isDark ? Colors.grey[700]! : Colors.grey[100]!,
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 7 / 4,
                      child: Shimmer.fromColors(
                        baseColor:
                            isDark ? Colors.grey[850]! : Colors.grey[300]!,
                        highlightColor:
                            isDark ? Colors.grey[700]! : Colors.grey[100]!,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(JmSize.borderRadiusLg),
                              image: const DecorationImage(
                                  image: NetworkImage(''), fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //--------------------------------------- FEEDS FOOTER SECTION --------------------------------------------
              const JGap(h: JmSize.spaceBtwItems * 0.5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Shimmer.fromColors(
                    baseColor: isDark ? Colors.grey[850]! : Colors.grey[300]!,
                    highlightColor:
                        isDark ? Colors.grey[700]! : Colors.grey[100]!,
                    child: Text(
                      '',
                      style: Theme.of(context).textTheme.bodyLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        UniconsLine.heart,
                        size: 25,
                        color: JColor.error,
                      ))
                ],
              ),
              const JGap(h: JmSize.spaceBtwItems),
            ]),
          ),
        );
      },
    );
  }
}





// Shimmer.fromColors(
            
//             child: