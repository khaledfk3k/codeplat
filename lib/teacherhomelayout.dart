import 'package:coding_for_child/profilepage.dart';
import 'package:coding_for_child/searchscreen.dart';
import 'package:coding_for_child/teacher_home_page.dart';
import 'package:coding_for_child/uploadpage.dart';
import 'package:flutter/material.dart';

import 'morehomelayout.dart';

class teacherhomelayout extends StatefulWidget {
  @override
  State<teacherhomelayout> createState() => _teacherhomelayoutState();
}

class _teacherhomelayoutState extends State<teacherhomelayout> {
  int currentindex = 0;

  List<Widget> screens = [
    teacherhomepage(),
    searchscreen(),
    morelayout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe0afa0),
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
        title: Text(
          'username',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => uploadpage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_circle_up,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          )
        ],
        elevation: 0,
      ),
      body: screens[currentindex],
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
              icon: Icon(Icons.more_vert_rounded), label: 'More'),
        ],
      ),
    );
  }
}
