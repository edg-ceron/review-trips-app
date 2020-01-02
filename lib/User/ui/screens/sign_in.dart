import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trip_app/platzi_trips.dart';
import 'package:trip_app/platzi_trips_cupertino.dart';
import 'package:trip_app/widgets/button_green.dart';
import 'package:trip_app/widgets/gradient_back.dart';
import 'package:trip_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  @override
  State createState() {
    return _Signin();
  }
}


class _Signin extends State<SignIn> {

  UserBloc userBLoc;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBLoc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession () {
    return StreamBuilder(
      stream: userBLoc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot -data -Object User
        if(!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUi();
        } else {
          return PlatziTripsCupertino();
        }
      },
    );
  }

  Widget signInGoogleUi() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Bienvenido \n Review lugares App.",
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              ButtonGreen(
                text: "Iniciar Sesión con Gmail",
                onPressed: () {
                  userBLoc.signIn().then((FirebaseUser user) => print("El usuario es ${user}"));
                },
                height: 50.0,
                width: 300.0,
              )
            ],
          )
        ],
      ),
    );
  }
}