import 'package:flutter/material.dart';

import '../../model/review.dart';

class ReviewItems extends StatelessWidget {
  final Review review;
  const ReviewItems({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10
          )
        ]
      ),
    );
  }
}
