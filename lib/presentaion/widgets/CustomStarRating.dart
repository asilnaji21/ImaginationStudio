import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomStarRating extends StatelessWidget {
  final double initialRating;
  final double minRating;

  const CustomStarRating({
    super.key,
    required this.initialRating,
    required this.minRating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar.builder(
          ignoreGestures: true,
          initialRating: initialRating,
          minRating: minRating,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          updateOnDrag: false,
          itemSize: 30.0,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.black,
          ),
          onRatingUpdate: (_) {
            // لا نقوم بأي شيء هنا لأننا نريد جعل القيمة ثابتة
          },
        )
      ],
    );
  }
}
