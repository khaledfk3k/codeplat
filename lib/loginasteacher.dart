import 'package:coding_for_child/teacherhomelayout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'forgetpasswordscreen.dart';
import 'homepage.dart';

class loginteacher extends StatefulWidget {

  @override
  State<loginteacher> createState() => _loginteacherState();
}

class _loginteacherState extends State<loginteacher> {
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
                                builder: (context) =>teacherhomelayout (),
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
