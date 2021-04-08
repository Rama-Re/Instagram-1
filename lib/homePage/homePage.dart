import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/homePage/InfoOfProfile.dart';
import 'package:instagram/homePage/avatar.dart';
import 'package:instagram/homePage/post.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        shadowColor: Colors.grey,
        leadingWidth: MediaQuery.of(context).size.width/3,
        backgroundColor: Theme.of(context).backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 5,top: 5,left: 5),
          child: Image.asset("assets/images/instagram-logo-black.jpg",
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8,top: 8,right: 8),
            child: Icon(FontAwesomeIcons.facebookMessenger,color: Colors.white,),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Stories(),
              Post(
                name: "ramarehawi",
                avatarImage: "assets/images/myPhoto.jpg",
                myPhoto: "assets/images/myPhoto.jpg",
                postImage: "assets/images/myPhoto.jpg",
              ),
            ],
          ),
          Post(
            name: "muratboz",
            avatarImage: "assets/images/murat.jpg",
            myPhoto: "assets/images/myPhoto.jpg",
            postImage: "assets/images/muratboz.jpg",
          ),
          Post(
            name: "canyaman",
            avatarImage: "assets/images/canyaman.jpg",
            myPhoto: "assets/images/myPhoto.jpg",
            postImage: "assets/images/canyaman.jpg",
          ),
          Post(
            name: "leomessi",
            avatarImage: "assets/images/messi.jpg",
            myPhoto: "assets/images/myPhoto.jpg",
            postImage: "assets/images/leomessi.jpg",
          ),
        ],
      ),
    );
  }
}
