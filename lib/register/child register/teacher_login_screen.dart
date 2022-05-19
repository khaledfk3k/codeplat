import 'package:adobe_xd/pinned.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:coding_for_child/loginscreenone.dart';


import 'package:coding_for_child/teacher_home_page.dart';
import 'package:coding_for_child/teacherhomelayout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../childhomelayout.dart';

class teacherloginscreen extends StatefulWidget {

  @override
  _teacherloginscreenState createState() => _teacherloginscreenState();
}

class _teacherloginscreenState extends State<teacherloginscreen> {
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var agecontroller = TextEditingController();
  var imagecontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  final _firebaseAuth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(size: 229.0, start: -24.0),
              Pin(size: 229.0, start: -36.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                    const AssetImage('assets/images/sign_in_2.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(313.0),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(start: -55.0, end: -56.0),
              Pin(size: 448.0, end: -88.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.14), BlendMode.dstIn),
                  ),
                  borderRadius: BorderRadius.circular(604.0),
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 352.0, end: -83.0),
              Pin(size: 303.0, start: -36.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                    const AssetImage('assets/images/sign_in_1.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(147.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SingleChildScrollView(
                          child: Form(
                            key: formkey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: namecontroller,
                                        onFieldSubmitted: (value) {
                                          print(value);
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return ('name text must be not empty');
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText: 'Name',
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(
                                              Icons.person_pin,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: emailcontroller,
                                        keyboardType:
                                        TextInputType.emailAddress,
                                        onFieldSubmitted: (value) {
                                          print(value);
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return ('email text must be not empty');
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText: 'email address',
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(
                                              Icons.email,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: passwordcontroller,
                                        obscureText: true,
                                        keyboardType:
                                        TextInputType.visiblePassword,
                                        onFieldSubmitted: (value) {
                                          print(value);
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return ('password text must be not empty');
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText: 'password',
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(
                                              Icons.lock_outlined,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: phonecontroller,
                                        keyboardType: TextInputType.phone,
                                        onFieldSubmitted: (value) {
                                          print(value);
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return ('phone text must be not empty');
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText: 'Phone',
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(
                                              Icons.phone,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: agecontroller,
                                        keyboardType:
                                        TextInputType.number,
                                        onFieldSubmitted: (value) {
                                          print(value);
                                        },
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return ('age text must be not empty');
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            labelText: 'Age',
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(
                                              Icons.person_pin_outlined,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        color: Color(0xffe0afa0),
                                        width: double.infinity,
                                        child: MaterialButton(
                                          onPressed: () {
                                            if (formkey.currentState!.validate()) {
                                             _firebaseAuth.createUserWithEmailAndPassword(email: emailcontroller.text, password: passwordcontroller.text,)
                                             .then((value) {
                                               FirebaseFirestore.instance.collection('userdata').doc(value.user!.uid).set(
                                                   {"email": value.user!.email,
                                                     "name": namecontroller.text,
                                                     "phone":phonecontroller.text,
                                                     "password":passwordcontroller.text,
                                                     "age": agecontroller.text,
                                                     "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXu2uNVbiLmM0m0GWSChzyE4Z-2r3KQ4eJcQ&usqp=CAU",

                                                   });

                                               Navigator.push(
                                                 context,
                                                 MaterialPageRoute(
                                                   builder: (context) =>teacherhomelayout (),
                                                 ),
                                               );
                                             }).catchError((onErro){print(onErro.toString());});

                                            }else{
                                              print('ok');
                                            }
                                          },
                                          child: Text('SIGN IN'),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        color: Colors.white,
                                        child: MaterialButton(
                                          onPressed: () {

                                          },
                                          child: Text(
                                            'log in',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
