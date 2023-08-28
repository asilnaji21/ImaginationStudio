import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomStarRating extends StatelessWidget {
  const CustomStarRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 3,
          itemSize: 30.0,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.black,
          ),
          onRatingUpdate: (rating) {},
        ),
        RatingBar.builder(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 2,
          itemSize: 30.0,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.black,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ],
    );
  }
}
