
import 'package:coding_for_child/network/cache_helper.dart';
import 'package:coding_for_child/network/dio_helper.dart';
import 'package:coding_for_child/teachervideopage.dart';
import 'package:coding_for_child/video.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'child_home_page.dart';


Future<void> main() async {
  DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  await cachehelper.init();
  await  Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:teachvedeo(),
    );
  }
}


