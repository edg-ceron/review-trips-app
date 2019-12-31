import 'package:flutter/material.dart';
import 'content_icon.dart';
import 'gradient_back_profile.dart';

class HeaderAppBarProfile extends StatelessWidget {
  String pathImage = "assets/img/avatar_2.jpeg";
  String nameProfile = "Edgar Ceron";
  String emailProfile = "edg-ceron@hotmail.com";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final iconConfig = Container(
      margin: EdgeInsets.only(
        left: 350.0
      ),
      child: Icon(
        Icons.settings,
        color: Colors.white30,
        size: 16,
      ),
    );
    final photoProfile = Container(
      margin: EdgeInsets.only(
        top: 40.0,
        left: 20.0,
        right: 20.0
      ),
      width: 95.0,
      height: 95.0,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Colors.white),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final detailProfile = Container(
      height: 50,
      margin: EdgeInsets.only(
        top: 45.0
      ),
      child: Column(
        children: <Widget>[
          Text(
            nameProfile,
            style: TextStyle(
              fontFamily:  "Lato",
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            emailProfile,
            style: TextStyle(
              fontFamily:  "Lato",
              fontSize: 15,
              color: Colors.white24,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );

    final containerProfile = Container(
       margin: EdgeInsets.only(
        bottom: 5.0
      ),
      child: Row(
        children: <Widget>[
          photoProfile,
          detailProfile
        ],
      )
    );

    final actionsIcons = Container(
      height: 80,
      margin: EdgeInsets.only(
        top: 180.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ContentIcon(Icons.bookmark_border, false),
          ContentIcon(Icons.calendar_today, false),
          ContentIcon(Icons.add, true),
          ContentIcon(Icons.email, false),
          ContentIcon(Icons.person, false),
        ],
      ),
    );

    return Stack(
      alignment: Alignment(-0.9, -0.3),
      children: <Widget>[
        GradientBackProfile('Perfil'),
        iconConfig,
        containerProfile,
        actionsIcons
      ],
    );
  }

}