import 'package:flutter/material.dart';
import 'package:trip_app/my_favorite_trips_list.dart';

import 'gradient_back.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        GradientBack('Perfil'),
        MyFavoriteTripsList()
      ]
    );
  }
}