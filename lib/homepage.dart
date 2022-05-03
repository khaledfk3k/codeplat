import 'package:coding_for_child/chooseuser.dart';
import 'package:coding_for_child/loginscreenone.dart';
import 'package:coding_for_child/main_reusable_component.dart';
import 'package:coding_for_child/profilepage.dart';
import 'package:coding_for_child/startpage.dart';
import 'package:coding_for_child/uploadpage.dart';
import 'package:coding_for_child/videopage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buypage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  dynamic username = 'level 1';
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
                builder: (context) => startpage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Coding For Child',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 15),
        ),
        actions: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chooseuser(),
                    ),
                  );
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginescreenone(),
                    ),
                  );
                },
                child: Text(
                  'log in',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          )
        ],
        elevation: 0,
      ),
      body: Container(
        color: Color(0xffe0afa0),
        child:Padding(
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
                                builder: (context) => loginescreenone(),
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
                                builder: (context) => loginescreenone(),
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
                                builder: (context) => loginescreenone(),
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
                                builder: (context) => loginescreenone(),
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
                                builder: (context) => loginescreenone(),
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
      ),
    );
  }


}
