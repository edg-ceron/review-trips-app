import 'package:flutter/material.dart';
import 'header_appbar_profile.dart';
import 'my_favorite_trips_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        HeaderAppBarProfile(),
        MyFavoriteTripsList()
      ]
    );
  }
}