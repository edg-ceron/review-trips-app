import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/bahamas.jpg";
  String name = 'Varuna Yasas';
  String details = '1 review 5 photos';
  String comment = 'There is an mazing plate in Bahamas';



  // Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_half = Container(
      margin: EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );
    
    final star_border = Container(
      margin: EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );
    
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );
    
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start,
            start
          ],
        )
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w700
        ),
      ),
    );
    final users_detail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        users_detail
      ],
    );
  }
}