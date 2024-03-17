// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/model/user_model.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class RecipeViewReviewTile extends StatelessWidget {
  const RecipeViewReviewTile({
    super.key, required this.reviewText, this.user, required this.rating,
  });
final String reviewText;
final UserModel? user;
final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(JmSize.defaultSpace / 2),
      width: double.infinity,
      decoration: BoxDecoration(
          // color: JColor.lightContainer,
          borderRadius:
              BorderRadius.circular(JmSize.borderRadiusLg)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(),
            JGap(
              w: 10.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                children: [
                  JGap(
                    h: 9.0,
                  ),
                  Text(
                    'Aadil',
                    style:
                        Theme.of(context).textTheme.bodyLarge,
                  ),
                  JGap(
                    h: 9.0,
                  ),
                  RatingBar.builder(
                    initialRating: rating,
                    // minRating: 1,
                    direction: Axis.horizontal,
                    ignoreGestures: true,
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
                  JGap(
                    h: 9.0,
                  ),
                  Text(reviewText,
                  style: Theme.of(context).textTheme.bodySmall,)
                ],
              ),
            )
          ]),
    );
  }
}