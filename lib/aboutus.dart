import 'package:flutter/material.dart';

class aboutus extends StatefulWidget {
  @override
  _aboutusState createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    dynamic texto =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
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
        title: Text(
          'About us',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
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
        height: double.infinity,
        color: Color(0xffe0afa0),
        child:
        // program discribtion
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      texto,
                      style: TextStyle(color: Colors.black, fontSize: 20),
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
