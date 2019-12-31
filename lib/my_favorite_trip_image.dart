import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class MyFavoriteTripImage extends StatelessWidget {
  String pathImage = "assets/img/bahamas.jpg";
  String namePlace;
  String descriptionPlace;
  String stepPlace;

  MyFavoriteTripImage(this.pathImage, this.namePlace, this.descriptionPlace, this.stepPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 220.0,
      width: 390.0,
      margin: EdgeInsets.only(
        top: 20.0,
        bottom: 70.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    final title = Container(
       margin: EdgeInsets.only(
        bottom: 5.0
      ),
      child: Text(
        namePlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 20.0,
          fontWeight: FontWeight.w700
        )
      ),
    );

    final detetail_information = Container(
      margin: EdgeInsets.only(
        bottom: 5.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        )
      ),
    );

    final step_information = Container(
      child: Text(
        stepPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 14.0,
          color: Color(0xFFf79236),
          fontWeight: FontWeight.w600

        )
      ),
    );

    final desctiption_container = Container(
      height: 110.0,
      width: 280.0,
      padding: EdgeInsets.only(
        top: 13.0,
        left: 18.0,
        right: 18.0
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title,
          detetail_information,
          step_information
        ],
      ),
    );


    return Stack(
      alignment: Alignment(0.0, 0.8),
      children: <Widget>[
        card,
        Stack(
          alignment: Alignment(0.8, 1.6),
          children: <Widget>[
            desctiption_container,
            FloatingActionButtonGreen()
          ],
        )
      ],
    );
  }
}