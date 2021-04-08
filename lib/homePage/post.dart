import 'package:flutter/material.dart';
import 'package:instagram/homePage/avatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/my_flutter_app_icons.dart';


class Post extends StatefulWidget {
  String avatarImage, postImage ,myPhoto;
  String name;
  int numOfLikes = 0;
  int numOfComments = 0;
  bool like = false;
  bool save = false;
  Post(
      {@required this.avatarImage,
        @required this.postImage,
        @required this.myPhoto,
        @required this.name});
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:10 ,top:10 ,right:8 ,left: 8),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Avatar(image: widget.avatarImage ,radius: 16),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0,top: 6.0,left: 10),
                  child: Text(widget.name,style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            Icon(Icons.more_vert,color: Colors.white,),
            ],
          ),
        ),
        InkWell(
          child: Image.asset(widget.postImage,
            fit: BoxFit.contain,
          ),
          onDoubleTap: (){setState(() {

            if (!widget.like) widget.numOfLikes++;
            widget.like = true;
          });},
        ),
        Container(
          padding: const EdgeInsets.only(top: 15,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
              children: [
                //download icons
                IconButton(
                  icon: Icon((!widget.like)? Icons.favorite_border:Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: (){setState(() {

                    widget.like = !widget.like;
                    (widget.like)?widget.numOfLikes++:widget.numOfLikes--;
                  });},
                ),
                SizedBox(width: 8.0, ),
                FaIcon(FontAwesomeIcons.comment,color: Colors.white),
                SizedBox(width: 15.0, ),
                Icon(MyFlutterApp.direction,color: Colors.white),
              ],
            ),
              IconButton(
              icon: Icon((!widget.save)? Icons.bookmark_border: Icons.bookmark,
                color: Colors.white,
              ),
              onPressed: (){setState(() {
                widget.save = !widget.save;
              });},
            ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0,left: 8,right: 8),
          child: Text("${widget.numOfLikes} likes",
            style: TextStyle(color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0,left: 8,right: 8),
          child: Text("view all ${widget.numOfComments} comments",
            style: TextStyle(color: Colors.grey),
            textDirection: TextDirection.ltr,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8,right: 8,top: 6,bottom: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Avatar(image: widget.myPhoto ,radius: 15),
                  SizedBox(width: 8,),
                  Center(
                    child: SizedBox(
                      width: (3*MediaQuery.of(context).size.width)/4,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Add a comment...",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Text("❤ 🙌"),
            ],
          ),
        ),
      ],
    );
  }
}
