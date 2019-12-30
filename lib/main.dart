import 'package:flutter/material.dart';
import 'package:trip_app/description_place.dart';
import 'package:trip_app/review_list.dart';
import 'package:trip_app/gradient_back.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  String descriptionDummy = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium fuga quasi omnis possimus officia! Consequuntur perspiciatis illo, perferendis ea assumenda necessitatibus tenetur laboriosam nisi, quidem alias enim accusantium velit quibusdam!';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola mundo'),
        ),
        // body: Column(
        //   children: <Widget>[
        
        //   ],
        // )
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Bahamas", 4, descriptionDummy),
                ReviewList()
              ],
            ),
            GradientBack(),
          ],
        ),
      ),
    );
  }
}
