import 'package:flutter/material.dart';

import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Review("assets/img/people3.jpg", "Auronplay", "2 review 4 photos",
            "Pero que ha pasao?!"),
        Review("assets/img/people.jpg", "Chuck Norris", "1 review 5 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/img/people2.jpg", "Scarlett", "3 review 9 photos",
            "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}
