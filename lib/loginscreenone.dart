import 'package:coding_for_child/child_home_page.dart';
import 'package:coding_for_child/childhomelayout.dart';
import 'package:coding_for_child/cubit/cubit.dart';
import 'package:coding_for_child/cubit/states.dart';
import 'package:coding_for_child/forgetpasswordscreen.dart';
import 'package:coding_for_child/homepage.dart';
import 'package:coding_for_child/teacher_home_page.dart';
import 'package:coding_for_child/teacherhomelayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class loginescreenone extends StatefulWidget {
  @override
  _loginescreenoneState createState() => _loginescreenoneState();
}

class _loginescreenoneState extends State<loginescreenone> {
  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return BlocProvider(
      create: (BuildContext context) => logincubit(),
      child: BlocConsumer<logincubit, loginstate>(
        listener: (context, state) {},
        builder: (context, state) {
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
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                logincubit.get(context).userlogin(
                                      email: emailcontroller.text,
                                      password: passwordcontroller.text,
                                    );
                                print('done');
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
                                  builder: (context) => forgetpasswordscreen(),
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
        },
      ),
    );
  }
}
