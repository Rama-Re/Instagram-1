import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/homePage/InfoOfProfile.dart';
import 'package:instagram/homePage/post.dart';
import 'package:instagram/myProfilePage/profile.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        shadowColor: Colors.grey,
        backgroundColor: Theme.of(context).backgroundColor,

        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.lock_outline_sharp,size: 17,),
            SizedBox(width: 5,),
            Text("ramarehawi",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            SizedBox(width: 5,),
            Icon(Icons.arrow_drop_down_outlined,size: 17,),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8,top: 8,right: 18),
            child: Icon(Icons.add_box_outlined,color: Colors.white,size: 26,),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8,top: 8,right: 10),
            child: Icon(Icons.menu,color: Colors.white,size: 26,),
          ),

        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Informations(),
        ],
      ),
    );
  }
}
