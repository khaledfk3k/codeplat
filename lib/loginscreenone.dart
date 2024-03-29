import 'package:coding_for_child/child_home_page.dart';
import 'package:coding_for_child/childhomelayout.dart';
import 'package:coding_for_child/cubit/cubit.dart';
import 'package:coding_for_child/cubit/states.dart';
import 'package:coding_for_child/forgetpasswordscreen.dart';
import 'package:coding_for_child/homepage.dart';
import 'package:coding_for_child/loginasteacher.dart';
import 'package:coding_for_child/network/cache_helper.dart';
import 'package:coding_for_child/teacher_home_page.dart';
import 'package:coding_for_child/teacherhomelayout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class loginescreenone extends StatefulWidget {
  @override
  _loginescreenoneState createState() => _loginescreenoneState();
}

class _loginescreenoneState extends State<loginescreenone> {
  static Future<User?> loginUsingEmailPassword({required String email, required String password , required BuildContext context})
  async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential usercredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user = usercredential.user;
    }on FirebaseException catch (e) {
      if (e.code == "user-not-found"){
        print("no user found");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    var formkey = GlobalKey<FormState>();
    dynamic users;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homepage(),
              ),
            );
          },
          color: Colors.black,
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),child: Container(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffe0afa0),
        ),child: TextButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => loginteacher(),
            ),
          );
        }, child: Text(" Teacher ",style: TextStyle(color:Colors.black,fontSize: 17 ),),),),),],
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xffffffff),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: const Color(0xffffffff),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
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
                    keyboardType: TextInputType.visiblePassword,
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
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffe0afa0),
                    ),
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 220,
                    child: MaterialButton(
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          // logincubit.get(context).userlogin(
                          //   email: emailcontroller.text,
                          //   password: passwordcontroller.text,
                          // );
                          User? user = await loginUsingEmailPassword(email: emailcontroller.text, password: passwordcontroller.text,context: context);
                          print(user);
                          if(user!= null){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>homelayout (),
                              ),
                            );
                          }
                        }else{
                          print('ok');
                        }
                      },
                      child: Text('LogIn'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    color: Color(0xffffffff),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'forget password',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          color: Colors.black,
                        ),
                      ),
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

