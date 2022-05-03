import 'package:coding_for_child/child_home_page.dart';
import 'package:coding_for_child/liberaryscreen.dart';
import 'package:coding_for_child/morehomelayout.dart';
import 'package:coding_for_child/profilepage.dart';
import 'package:coding_for_child/searchscreen.dart';
import 'package:flutter/material.dart';

class homelayout extends StatefulWidget {
  @override
  _homelayoutState createState() => _homelayoutState();
}

class _homelayoutState extends State<homelayout> {
  int currentindex = 0;
// list of navigation bar
  List<Widget> screens = [
    childhomepage(),
    searchscreen(),
    liberaryscreen(),
    morelayout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe0afa0),
        //profile picture
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => profilepage(),
              ),
            );
          },
          icon: Icon(
            Icons.supervised_user_circle_rounded,
            size: 40,
            color: Colors.black,
          ),
        ),
        // profile user name
        title: Text(
          'username',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: screens[currentindex],
      // bottom navigation bar creation_
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        backgroundColor: Color(0xffe0afa0),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add_check_outlined), label: 'library'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_rounded), label: 'More'),
        ],
      ),
    );
  }
}
