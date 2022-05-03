import 'package:coding_for_child/profilepage.dart';
import 'package:coding_for_child/teacher_home_page.dart';
import 'package:flutter/material.dart';

class studentdegree extends StatefulWidget {

  @override
  _studentdegreeState createState() => _studentdegreeState();
}

class _studentdegreeState extends State<studentdegree> {
  @override
  Widget build(BuildContext context) {
    dynamic stuname = 'child name' ;
    dynamic degreee = '70';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: double.infinity,
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Course name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  width: double.infinity,
                  height: 630,
                  child: SingleChildScrollView(child:Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                     children: [
                        Row(
                          children: [
                          IconButton(
                            onPressed: () { Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profilepage(),
                              ),
                            );},
                            icon: Icon(
                              Icons.supervised_user_circle_rounded,
                              size: 40,
                              color: Colors.black,
                            ),),
                          SizedBox(width: 5,),
                          Column(children: [
                            Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                          ],)
                        ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           IconButton(
                             onPressed: () { Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => profilepage(),
                               ),
                             );},
                             icon: Icon(
                               Icons.supervised_user_circle_rounded,
                               size: 40,
                               color: Colors.black,
                             ),),
                           SizedBox(width: 5,),
                           Column(children: [
                             Text(stuname,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                             Text(degreee, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                           ],)
                         ],),
                      ],
                    ),
                  ),),
                ),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => teacherhomepage(),
                    ),
                  );
                }, child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Send degree to parent',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
