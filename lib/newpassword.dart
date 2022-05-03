import 'package:coding_for_child/homepage.dart';
import 'package:coding_for_child/loginscreenone.dart';
import 'package:flutter/material.dart';

class newpassword extends StatefulWidget {

  @override
  _newpasswordState createState() => _newpasswordState();
}

class _newpasswordState extends State<newpassword> {
  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    var conpasscontroller= TextEditingController();
    var formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon:Icon(Icons.arrow_back) ,
          onPressed: () {  },
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body:Container(
        color: const Color(0xffffffff),
        child:Padding(
          padding:  const EdgeInsets.all(20.0),
          child:Container(
            color: const Color(0xffffffff),
            child: Form(
              key: formkey,
              child:Column(
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
                    controller: conpasscontroller,
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
                        labelText: 'add new password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordcontroller,

                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('confirm password text must be not empty');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'confirm password',
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
                      color: Color(0xffe0afa0), ),
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 220,
                    child: MaterialButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginescreenone(),
                            ),
                          );

                        }
                      },
                      child: Text('CONFIRM'),
                    ),
                  ),


                ],
              ) ,),),),),
    );
  }
}
