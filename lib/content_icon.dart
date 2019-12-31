import 'package:flutter/material.dart';

class ContentIcon extends StatelessWidget {
  dynamic nameIcon;
  bool isActive = false;

  ContentIcon(this.nameIcon, this.isActive);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: isActive ? 51 : 41,
      width: isActive ? 51 : 41,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white24,
        borderRadius: BorderRadius.all(Radius.circular(isActive ? 51 : 41))
      ),
      child: Icon(
        nameIcon,
        size: 25,
        color: Color(0xFF2F58CA),
      ),
    );
  }
}