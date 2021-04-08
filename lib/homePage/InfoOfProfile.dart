import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram/homePage/Story.dart';

import 'avatar.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: max(MediaQuery.of(context).size.width/6,MediaQuery.of(context).size.height/6),
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(bottom: 3.0,left: 10,top: 15),
        children: [
          Stack(children: <Widget>[
            Container(child: Story(image: "assets/images/myPhoto.jpg",name: "Your story",),
              padding: const EdgeInsets.only(left: 10),
            ),
            Positioned(child: Container(
              height: 22,
              width: 22,
              //color: Colors.black,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
              top: 47,left: 60,
            ),
            Positioned(child: Icon(Icons.add_circle_rounded,color: Colors.blue,size: 22,),
              top: 47,left: 60,
            ),
          ],
          ),
          Container(child: Story(image: "assets/images/murat.jpg",name: "muratboz",),
            padding: const EdgeInsets.only(left: 10),
          ),
          Container(child: Story(image: "assets/images/canyaman.jpg",name: "canyman",),
            padding: const EdgeInsets.only(left: 10),
          ),
          Container(child: Story(image: "assets/images/messi.jpg",name: "leomessi",),
            padding: const EdgeInsets.only(left: 10),
          ),
          Container(child: Story(image: "assets/images/murat.jpg",name: "muratboz",),
            padding: const EdgeInsets.only(left: 10),
          ),
          Container(child: Story(image: "assets/images/murat.jpg",name: "muratboz",),
            padding: const EdgeInsets.only(left: 10),
          ),
          Container(child: Story(image: "assets/images/murat.jpg",name: "muratboz",),
            padding: const EdgeInsets.only(left: 10),
          ),

        ],
      ),
    );
  }
}
