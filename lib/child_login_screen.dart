import 'package:adobe_xd/pinned.dart';
import 'package:coding_for_child/child_home_page.dart';
import 'package:coding_for_child/childhomelayout.dart';
import 'package:flutter/material.dart';
import 'loginscreenone.dart';

class childloginscreen extends StatefulWidget {

  @override
  _childloginscreenState createState() => _childloginscreenState();
}

class _childloginscreenState extends State<childloginscreen> {
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var agecontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(size: 229.0, start: -24.0),
              Pin(size: 229.0, start: -36.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/sign_in_2.jpg'),
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
                    image: const AssetImage('assets/images/sign_in_1.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(147.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child:Container(
                  alignment: Alignment.bottomCenter,
                  child:SingleChildScrollView(child:Column(
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
                                    keyboardType: TextInputType.number,
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
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => homelayout(),
                                            ),
                                          );
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
                                        if (formkey.currentState!.validate()) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  loginescreenone(),
                                            ),
                                          );
                                        }
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
                ), ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
