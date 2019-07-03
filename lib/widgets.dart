import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class StreakBar extends StatelessWidget {
  String name;
  double streak ;



  StreakBar();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      width: 50,
      height: this.streak,
      color: Colors.red,


    );
  }



}