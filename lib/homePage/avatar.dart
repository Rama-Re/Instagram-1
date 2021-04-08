import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Avatar extends StatelessWidget {
  String image;
  double radius;
  Avatar({@required this.image,this.radius = 30});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(image),
     // child: Image.asset(image,fit: BoxFit.contain,),
    );
  }
}
