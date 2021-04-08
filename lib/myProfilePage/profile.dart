import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/homePage/avatar.dart';

class Informations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Avatar(
                image: "assets/images/myPhoto.jpg",
                radius: 42,
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Text("30",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Posts",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text("157",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Followers",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text("357",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "Following",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Text(
            "Rama Rehawi",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: Text(
            "28/11/2000 \nInformation Technology Engineer 💻✌\nVolunteer with @rbcs.team ❤",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 20, left: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //I will edit ...
              InkWell(
                highlightColor: Colors.red,
                onTap: null,
                radius: 20,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  height: 31,
                  width: MediaQuery.of(context).size.width * 8 / 18 + 1,
                  child: Center(
                    child: Container(
                      height: 30,
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      width: MediaQuery.of(context).size.width * 8 / 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                highlightColor: Colors.red,
                onTap: null,
                radius: 20,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  height: 31,
                  width: MediaQuery.of(context).size.width * 8 / 18 + 1,
                  child: Center(
                    child: Container(
                      height: 30,
                      child: Center(
                        child: Text(
                          "Saved",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      width: MediaQuery.of(context).size.width * 8 / 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Text(
            "Continue later",
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
