import 'package:flutter/material.dart';

import 'package:trip_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/avatar_1.jpeg", "Varuna Yasas", "1 review -  5 photos", "There is an mazing plate in Bahamas"),
        Review("assets/img/avatar_2.jpeg", "Edgar C.", "2 review - 5 photos", "There is an mazing plate in Bahamas"),
        Review("assets/img/avatar_3.jpeg", "Ivan M.", "1 review - 5 photos", "There is an mazing plate in Bahamas"),
      ],
    );
  }
}