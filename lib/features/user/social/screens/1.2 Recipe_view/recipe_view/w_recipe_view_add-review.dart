
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class RecipeViewAddReview extends StatelessWidget {
  const RecipeViewAddReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JSectionHeading(
          heading: 'Reviews',
          isFixedColor: false,
        ),
        Container(
          padding: EdgeInsets.all(JmSize.defaultSpace/2),
          // height: 170,
          width: double.infinity,
          margin:
              EdgeInsets.symmetric(vertical: JmSize.defaultSpace),
          decoration: BoxDecoration(
              color: JColor.lightContainer,
              borderRadius:
                  BorderRadius.circular(JmSize.borderRadiusLg)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CircleAvatar(),
            JGap(w: 10.0,),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  JGap(h: 9.0,),
                  Text(
                    'Aadil',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  JGap(h: 9.0,),
                  RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding:
                        EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: JColor.primary,
                    ),
                    onRatingUpdate: (rating) {
                      // print(rating);
                    },
                  ),
                  JGap(h: 9.0,),
                  TextFormField(maxLines: null,
                      decoration: InputDecoration(
                    hintText: 'Write your review',
                    border: InputBorder.none,
                    suffix: GestureDetector(onTap: (){}, child: Icon(Icons.send,color: JColor.primary,)),
                  
                    
                  )),
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
