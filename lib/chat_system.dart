import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final firestore = FirebaseFirestore.instance;
late User signedinuser;
class chating extends StatefulWidget {
  @override
  State<chating> createState() => _chatingState();
}

class _chatingState extends State<chating> {
  final massegecontroller = TextEditingController();
  final auth = FirebaseAuth.instance;

  String? massegetext;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcurrentuser();
  }

  void getcurrentuser() {
    try {
      final user = auth.currentUser;
      if (user != null) {
        signedinuser = user;
        print(signedinuser.email);
      }
    } catch (e) {
      print(e);
    }
  }
// void getmassege()async{
//   final masseges = await firestore.collection('masseges').get();

// }
  void streammssege() async {
    await for (var snapshots in firestore.collection('masseges').snapshots()) {
      for (var massge in snapshots.docs) {
        print(massge.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffe0afa0),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),

          elevation: 0),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            streembuildder(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: massegecontroller,
                      onChanged: (value) {
                        massegetext = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      massegecontroller.clear();
                      firestore.collection('masseges').add({
                        'text': massegetext,
                        'sender': signedinuser.email,
                        'time': FieldValue.serverTimestamp()
                      });
                    },
                    child: Text(
                      'send',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class streembuildder extends StatelessWidget {
  const streembuildder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestore.collection('masseges').orderBy('time').snapshots(),
      builder: (context, snapshot) {
        List<massegeline> massegewidgets = [];

        if (!snapshot.hasData) {
          //add here a spiner
        }
        final masseges = snapshot.data!.docs.reversed;
        for (var massege in masseges) {
          final massegesender = massege.get('sender');
          final massegetext = massege.get('text');
          final curresntusr = signedinuser.email;

          final massegewisdget = massegeline(
            sender: massegesender,
            text: massegetext,
            isme:curresntusr == massegesender ,
          );
          massegewidgets.add(massegewisdget);
        }

        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            children: massegewidgets,
          ),
        );
      },
    );
  }
}

class massegeline extends StatelessWidget {
  const massegeline({this.text, this.sender,required this.isme, Key? key}) : super(key: key);
  final String? sender;
  final String? text;
  final bool isme;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Material(
        

        child: Column(
          crossAxisAlignment:isme?  CrossAxisAlignment.end: CrossAxisAlignment.start,
          children: [
            Text(
              '$sender',
              style: TextStyle(fontSize: 10, color: Colors.black54),
            ),
            Material(
              borderRadius:isme? BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft:  Radius.circular(15),
                bottomRight:  Radius.circular(15),
              ):BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft:  Radius.circular(15),
                bottomRight:  Radius.circular(15),
              ),
              color: Color(0xffe0afa0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                child: Text(
                  '$text',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
