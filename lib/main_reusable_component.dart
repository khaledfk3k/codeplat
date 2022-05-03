import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget post({
  required dynamic flatonpressed,
  double flatwidth = 225,
  double flatheight = 190,
  double flatBorderRadius = 20,
  dynamic flatcolor = Colors.white,
  dynamic flatpaddingone = const EdgeInsets.all(7.0),
  dynamic flatmainaxisone = MainAxisAlignment.start,
  dynamic flatcrossaxisone = CrossAxisAlignment.start,
  dynamic flaticonaxisone = Icons.person_pin,
  double flaticononesize = 19,
  double flatsizedboxone = 2,
  dynamic flatteachername = 'Teacher name',
  dynamic flatteachernamecolor = Colors.black,
  double flatteachernamefontsize = 12,
  dynamic flatpaddingtwo = const EdgeInsets.all(2),
  dynamic flatimage = 'assets/images/ssw.png',
  double flatimagewidth = 150,
  double flatimageheight = 125,
  dynamic flatpaddingthree = const EdgeInsets.all(5),
  dynamic flatcoursename = 'coursename',
  double flatsizedbox = 45,
  dynamic flaticontwo = Icons.star,
  double flaticontwosize = 15,
}) =>
    FlatButton(
      onPressed: flatonpressed,
      child: Container(
        width: flatwidth,
        height: flatheight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(flatBorderRadius),
            color: flatcolor,
          ),
          child: Padding(
            padding: flatpaddingone,
            child: Column(
              mainAxisAlignment: flatmainaxisone,
              children: [
                Column(
                  mainAxisAlignment: flatmainaxisone,
                  crossAxisAlignment: flatcrossaxisone,
                  children: [
                    Row(
                      children: [
                        Icon(
                          flaticonaxisone,
                          size: flaticononesize,
                        ),
                        SizedBox(
                          width: flatsizedboxone,
                        ),
                        Text(
                          flatteachername,
                          style: TextStyle(
                            color: flatteachernamecolor,
                            fontSize: flatteachernamefontsize,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: flatpaddingtwo,
                  child: Image(
                    image: AssetImage(
                      flatimage,
                    ),
                    width: flatimagewidth,
                    height: flatimageheight,
                  ),
                ),
                Padding(
                  padding: flatpaddingthree,
                  child: Row(
                    children: [
                      Text(
                        flatcoursename,
                        style: TextStyle(
                          color: flatteachernamecolor,
                          fontSize: flatteachernamefontsize,
                        ),
                      ),
                      SizedBox(
                        width: flatsizedbox,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );

Widget iconbut({
  dynamic iconbut = Icons.arrow_back_rounded,
  dynamic iconcolor = Colors.black,
  required dynamic icononpressed,
}) =>
    IconButton(
      onPressed: icononpressed,
      icon: Icon(
        iconbut,
        color: iconcolor,
      ),
    );

Widget coursepost({
  dynamic libsecnum = ' 16 section',
  dynamic libhournum = ' 21 hours',
  dynamic libcoursename = ' Course name',
  dynamic libicontwo = Icons.star,
  double libicontwosize = 20,
  required dynamic libonpressed,
}) =>
    FlatButton(
      onPressed: libonpressed,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/ssw.png'),
                width: 120,
                height: 120,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    libcoursename,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    libsecnum,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    libhournum,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Row(
                    children: [
                      Icon(
                        libicontwo,
                        size: libicontwosize,
                      ),
                      Icon(
                        libicontwo,
                        size: libicontwosize,
                      ),
                      Icon(
                        libicontwo,
                        size: libicontwosize,
                      ),
                      Icon(
                        libicontwo,
                        size: libicontwosize,
                      ),
                      Icon(
                        libicontwo,
                        size: libicontwosize,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

Widget teacherpost({
  dynamic teasecnum = ' 16 section',
  dynamic teahournum = ' 21 hours',
  dynamic teacoursename = ' Course name',
  dynamic teaicontwo = Icons.star,
  double teaicontwosize = 20,
  required dynamic teaonpressed,
}) =>
    FlatButton(
      onPressed: teaonpressed,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/ssw.png'),
                width: 120,
                height: 120,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    teacoursename,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    teasecnum,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    teahournum,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Row(
                    children: [
                      Icon(
                        teaicontwo,
                        size: teaicontwosize,
                      ),
                      Icon(
                        teaicontwo,
                        size: teaicontwosize,
                      ),
                      Icon(
                        teaicontwo,
                        size: teaicontwosize,
                      ),
                      Icon(
                        teaicontwo,
                        size: teaicontwosize,
                      ),
                      Icon(
                        teaicontwo,
                        size: teaicontwosize,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

Widget videotextbutton({
  dynamic text = 'lesson',
  required dynamic vtonpressed,
  dynamic textfontWeight = FontWeight.bold,
  double textfontsize = 17,
  dynamic textfontcolor = Colors.black,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: vtonpressed,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: textfontWeight,
              fontSize: textfontsize,
              color: textfontcolor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.file_download,
            size: 20,
            color: Colors.black,
          ),
        ),
      ],
    );

Widget videopost({
 required dynamic videoupload,
}) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              videoupload,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
