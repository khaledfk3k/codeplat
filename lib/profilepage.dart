
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coding_for_child/chat_system.dart';
import 'package:coding_for_child/class_model/class_model.dart';
import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  @override
  _profilepageState createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    double flatBorderRadius1 = 15;
    dynamic name = 'Name ';
    dynamic email = 'Email ';
    dynamic phone = 'phone ';
    dynamic age = 'age ';
    dynamic experience = 'experience ';
    dynamic skilla = 'skills ';
    dynamic commentdata = 'comment';
    dynamic flaticontwo = Icons.star;
    double flaticontwosize = 22;
    final Stream<QuerySnapshot> users = FirebaseFirestore.instance.collection('users').snapshots();

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
        title: Text("Profile",style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chating(),
                  ),
                );
              },
              icon: Icon(
                Icons.chat,
                color: Colors.black,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        color: Color(0xffe0afa0),
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: SingleChildScrollView(
            child: Container(
              color: Color(0xffe0afa0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          child:  CircleAvatar(
                            radius: 55,
                            child:
                            StreamBuilder<QuerySnapshot> (stream: users,builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot)
                              {
                                if(snapshot.hasError)
                                  {
                                    return Text("wrong");
                                  }
                                if(snapshot.connectionState == ConnectionState.waiting)
                                {
                                  return Text("done");
                                }
                                final data = snapshot.requireData;
                                return ListView.builder(
                                  itemCount: data.size,
                                  itemBuilder: (context,index){
                                   return Text("ok ${data.docs[index]['image']}");
                                  },
                                );
                              }
                              ,)
                          ),
                        ),

                        Expanded(child:Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(flatBorderRadius1),
                              color: Colors.white,
                            ),
                            width: double.infinity,

                            child:  Padding(
                              padding: EdgeInsets.all(10),
                              child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    name,
                                    style: TextStyle(
                                        fontSize: 19, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    email,
                                    style: TextStyle(
                                        fontSize: 19, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    phone,
                                    style: TextStyle(
                                        fontSize: 19, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    age,
                                    style: TextStyle(
                                        fontSize: 19, fontWeight: FontWeight.bold),
                                  ),
                                ),

                              ],
                            ),),
                          ),
                        ), ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      width: double.infinity,

                      child:  Padding(
                        padding: EdgeInsets.all(20),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                'write your bio',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                            ),


                          ],
                        ),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(flatBorderRadius1),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      child: SingleChildScrollView(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  'Comments',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Icon(
                                flaticontwo,
                                size: flaticontwosize,
                              ),
                              Icon(
                                flaticontwo,
                                size: flaticontwosize,
                              ),
                              Icon(
                                flaticontwo,
                                size: flaticontwosize,
                              ),
                              Icon(
                                flaticontwo,
                                size: flaticontwosize,
                              ),
                              Icon(
                                flaticontwo,
                                size: flaticontwosize,
                              ),
                            ],
                          ),
                          Container(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/images/profile_1.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          commentdata,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),),
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
