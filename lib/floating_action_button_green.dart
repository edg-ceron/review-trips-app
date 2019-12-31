import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatinActionButtonGreen();
  }
  

}

class _FloatinActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool hasFavorite = false;

  void onPressedFav () {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Agregaste a tus favorito'),
        backgroundColor: Colors.green,
      )
    );
    setState(() {
      this.hasFavorite = true;
    });

  }
  @override
    Widget build(BuildContext context) {

      return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: Icon(
          hasFavorite
            ? Icons.favorite
            : Icons.favorite_border
        )
      );
    }
}
