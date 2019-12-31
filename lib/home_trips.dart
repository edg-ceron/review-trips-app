import 'package:flutter/material.dart';
import 'package:trip_app/review_list.dart';
import 'header_appbar.dart';
import 'description_place.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium fuga quasi omnis possimus officia! Consequuntur perspiciatis illo, perferendis ea assumenda necessitatibus tenetur laboriosam nisi, quidem alias enim accusantium velit quibusdam!';
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}