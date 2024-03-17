// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:toast/common/app/widgets/decoration_items/custom_containers/bg_image_container.dart';
// import 'package:toast/utils/constants/sizes.dart';
// import 'package:toast/utils/helpers/helper_functions.dart';

// class PostGridShimmer extends StatelessWidget {
//   const PostGridShimmer({super.key, required this.itemCount});
//   final int itemCount;
//   @override
//   Widget build(BuildContext context) {
//     final isDark = JHelperFunctions.isDarkMode(context);
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: JmSize.spaceBtwItems * 0.5,
//         mainAxisSpacing: JmSize.spaceBtwItems * 0.5,
//         // childAspectRatio: 2/1
//       ),
//       itemCount: itemCount,
//       itemBuilder: (BuildContext context, int index) {
//         return Shimmer.fromColors(
//           baseColor: isDark ? Colors.grey[850]! : Colors.grey[300]!,
//           highlightColor: isDark ? Colors.grey[700]! : Colors.grey[100]!,
//           child: const Card(
//               elevation: 10,
//               child: TempBgImageContainer(
//                 image: '',
//               )),
//         );
//       },
//     );
//   }
// }
