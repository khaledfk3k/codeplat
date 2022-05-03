import 'package:coding_for_child/correctexampage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class exampage extends StatefulWidget {
  @override
  _exampageState createState() => _exampageState();
}

class _exampageState extends State<exampage> {
  @override
  Widget build(BuildContext context) {
    dynamic coursequetion =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ante libero, lobortis non lectus vitae, mattis rutrum diam. Mauris nec magna vel ex sagittis pellentesque';
    double widtho = 150;
    double heighto = 170;
    var quetionnumber = 'question 1';
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
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: double.infinity,

                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            color:Color(0xffe0afa0),),
                            height: 40,
                            alignment: Alignment.center,
                            child:Text(
                              quetionnumber,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            //color: Colors.amberAccent,

                            child:Text(
                            coursequetion,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ),
                          Container(
                            child:
                            Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FlatButton(onPressed: (){}, child:Image(image:AssetImage('assets/images/ssw.png'),
                                    width: widtho,
                                    height: heighto,
                                  ), ),

                                  FlatButton(onPressed: (){}, child:Image(image:AssetImage('assets/images/ssw.png'),
                                    width: widtho,
                                    height: heighto,
                                  ), ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FlatButton(onPressed: (){}, child:Image(image:AssetImage('assets/images/ssw.png'),
                                    width: widtho,
                                    height: heighto,
                                  ), ),

                                  FlatButton(onPressed: (){}, child:Image(image:AssetImage('assets/images/ssw.png'),
                                    width: widtho,
                                    height: heighto,
                                  ), ),
                                ],
                              ),],)
                          ),
                         Row(children: [
                           FlatButton(onPressed: ()
                           {}, child: Padding(
                             padding: EdgeInsets.all(15),
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),
                                 color: Color(0xffe0afa0),
                               ),
                               width:120,
                               height: 40,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text(
                                     'previous',
                                     style: TextStyle(
                                         fontSize: 22, fontWeight: FontWeight.bold),
                                   ),
                                 ],
                               ),
                             ),
                           ),),
                           FlatButton(onPressed: ()
                           {}, child: Padding(
                             padding: EdgeInsets.all(15),
                             child: Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),
                                 color: Color(0xffe0afa0),
                               ),
                               width:120,
                               height: 40,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text(
                                     'next',
                                     style: TextStyle(
                                         fontSize: 22, fontWeight: FontWeight.bold),
                                   ),
                                 ],
                               ),
                             ),
                           ),),

                         ],)  ],
                      ),
                  ),
                ),
                FlatButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => correctexam(),
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
                          'Finished',
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
