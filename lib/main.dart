import 'package:flutter/material.dart';
import 'package:instagram/homePage/homePage.dart';
import 'package:instagram/homePage/post.dart';
import 'package:instagram/myProfilePage/myProfilePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        backgroundColor: Colors.black
      ),
      home: SelectedPage(),
    );
  }
}

class SelectedPage extends StatefulWidget {
  @override
  _SelectedPageState createState() => _SelectedPageState();
}

class _SelectedPageState extends State<SelectedPage> {
  int _selectedIndex = 0;
  static TextStyle optionStyle = TextStyle(fontSize: 40,fontWeight: FontWeight.bold);
  static List<Widget> _widgetOption = <Widget>[
    HomePage(),
    Center(child: Text('coming soon',style: optionStyle,)),
    Center(child: Text('coming soon',style: optionStyle,)),
    Center(child: Text('coming soon',style: optionStyle,)),
    MyProfile(),
  ];

  void _onItemTapped(int index){
    setState((){_selectedIndex = index;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),backgroundColor: Colors.black,label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded),backgroundColor: Colors.black,label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,),backgroundColor: Colors.black,label: "Post"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined,),backgroundColor: Colors.black,label: "Favorites"),
            BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage("assets/images/myPhoto.jpg"),radius: 15)
                ,backgroundColor: Colors.black,
                label: "MyProfile"
            ),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        )
    );
  }
}
