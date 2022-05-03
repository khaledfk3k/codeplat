
import 'package:coding_for_child/aboutus.dart';
import 'package:coding_for_child/buypage.dart';
import 'package:coding_for_child/child_login_screen.dart';
import 'package:coding_for_child/childhomelayout.dart';
import 'package:coding_for_child/correctexampage.dart';
import 'package:coding_for_child/exampage.dart';
import 'package:coding_for_child/forgetpasswordscreen.dart';
import 'package:coding_for_child/homepage.dart';


import 'package:coding_for_child/loginscreenone.dart';
import 'package:coding_for_child/network/dio_helper.dart';
import 'package:coding_for_child/profilepage.dart';
import 'package:coding_for_child/searchscreen.dart';
import 'package:coding_for_child/startpage.dart';
import 'package:coding_for_child/studentdegreepage.dart';
import 'package:coding_for_child/teacher_home_page.dart';
import 'package:coding_for_child/teacher_login_screen.dart';
import 'package:coding_for_child/uploadpage.dart';
import 'package:coding_for_child/videopage.dart';
import 'package:flutter/material.dart';

import 'child_home_page.dart';


void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:loginescreenone(),
    );
  }
}


