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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
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
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/profile_1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.facebook_rounded,
                                color: Colors.black,
                              )),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/what.jpg'),
                          ),
                        ),
                      ],
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
                      height: 254,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              name,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              email,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              phone,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              age,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              experience,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              skilla,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
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
                      child: Column(
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
