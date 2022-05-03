import 'package:coding_for_child/homepage.dart';
import 'package:coding_for_child/newpassword.dart';
import 'package:flutter/material.dart';

class forgetcodescreen extends StatefulWidget {

  @override
  _forgetcodescreenState createState() => _forgetcodescreenState();
}

class _forgetcodescreenState extends State<forgetcodescreen> {
  @override
  Widget build(BuildContext context) {
    var forgetcodecontroller = TextEditingController();
    var formkey = GlobalKey<FormState>();
    return
      Scaffold(appBar: AppBar(
      backgroundColor: Color(0xffffffff),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
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
                    controller: forgetcodecontroller,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('textbox must be not empty');
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'code',
                        border: OutlineInputBorder(),
                        ),
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
                             builder: (context) => newpassword(),
                           ),
                          );
                        }
                      },
                      child: Text('Send'),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),);
  }
}
