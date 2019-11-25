import 'package:flutter/material.dart';

import 'package:trip_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(),
        Review(),
        Review(),
        Review(),
      ],
    );
  }
}