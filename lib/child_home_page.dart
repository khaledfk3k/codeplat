import 'package:coding_for_child/buypage.dart';
import 'package:coding_for_child/profilepage.dart';
import 'package:coding_for_child/uploadpage.dart';
import 'package:coding_for_child/videopage.dart';
import 'package:flutter/material.dart';

import 'main_reusable_component.dart';

class childhomepage extends StatefulWidget {
  @override
  _childhomepageState createState() => _childhomepageState();
}

class _childhomepageState extends State<childhomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffe0afa0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0),
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 23.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Level 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 225,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return post(
                        flatonpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => buypage(),
                            ),
                          );
                        },
                      );
                    },
                    itemCount: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0),
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 23.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Level 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 225,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return post(
                        flatonpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => buypage(),
                            ),
                          );
                        },
                      );
                    },
                    itemCount: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0),
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 23.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Level 3',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 225,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return post(
                        flatonpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => buypage(),
                            ),
                          );
                        },
                      );
                    },
                    itemCount: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0),
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 23.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Level 4',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 225,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return post(
                        flatonpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => buypage(),
                            ),
                          );
                        },
                      );
                    },
                    itemCount: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.0),
                  child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 23.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Level 5',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 225,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return post(
                        flatonpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => buypage(),
                            ),
                          );
                        },
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
