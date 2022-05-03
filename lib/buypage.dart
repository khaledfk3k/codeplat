import 'package:coding_for_child/childhomelayout.dart';
import 'package:coding_for_child/liberaryscreen.dart';
import 'package:coding_for_child/main_reusable_component.dart';
import 'package:coding_for_child/videopage.dart';
import 'package:flutter/material.dart';

class buypage extends StatefulWidget {
  @override
  _buypageState createState() => _buypageState();
}

class _buypageState extends State<buypage> {
  @override
  Widget build(BuildContext context) {
    dynamic teachername = 'Teacher name';
    dynamic date = '2/2/2022';
    dynamic coursename = 'Course name';
    dynamic coursediscribtion = 'Course discribtion';
    dynamic flaticontwo = Icons.star;
    double flaticontwosize = 30;
    dynamic numsec = '16 section';
    dynamic timsec = '21 hour';
    dynamic numstu = '21 student';
    dynamic langsec = 'english';
    double flatBorderRadius1 = 15;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe0afa0), //appbar background
        // back icon button
        leading: iconbut(
          icononpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homelayout(),
              ),
            );
          },
        ),

        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        color: Color(0xffe0afa0),
        child: Padding(
          padding: EdgeInsets.all(7),
          // scroll up and down
          child: SingleChildScrollView(
            child: Column(
              children: [
                //course image
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ssw.png'),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                //course details (teacher name , course name , course discribtion , publisher date , buying date , rate)
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(flatBorderRadius1),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 235,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // teacher name
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                teachername,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            // date
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                date,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        // course name
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            coursename,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        //course discribtion
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            coursediscribtion,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            // date
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                date,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 64,
                            ),
                            // rate
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Icon(
                                    flaticontwo,
                                    size: flaticontwosize,
                                  ),
                                  Icon(
                                    flaticontwo,
                                    size: flaticontwosize,
                                  ),
                                  Icon(
                                    flaticontwo,
                                    size: flaticontwosize,
                                  ),
                                  Icon(
                                    flaticontwo,
                                    size: flaticontwosize,
                                  ),
                                  Icon(
                                    flaticontwo,
                                    size: flaticontwosize,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //course details (number of section , number of students , time of section , language)
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(flatBorderRadius1),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            // number of sections
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                numsec,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            //time
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                timsec,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // number of students
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                numstu,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            // language
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                langsec,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //buy button
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => vedeopage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(flatBorderRadius1),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'BUY',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
