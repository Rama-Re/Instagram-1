
import 'dart:math';

import 'package:flutter/material.dart';

import 'avatar.dart';

class Story extends StatelessWidget {
  String image;
  String name;

  Story({this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(child: Avatar(image: image,radius: min(MediaQuery.of(context).size.width/12, MediaQuery.of(context).size.height/12),),
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(

              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [Colors.yellow,Colors.pink],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.8, 0.0),
                  stops: [0.0,1.0],
                  tileMode: TileMode.clamp
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10,),
          child: Text(name,style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}
