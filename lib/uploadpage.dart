import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coding_for_child/teacher_home_page.dart';
import 'package:coding_for_child/teachervideopage.dart';
import 'package:coding_for_child/videopage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
final coursenamecontroller = TextEditingController();
final coursendiscricontroller = TextEditingController();
final question =TextEditingController() ;
final answer = TextEditingController();
String coursename = coursenamecontroller.text;
String coursedisc = coursendiscricontroller.text;
late User publisher;
class uploadpage extends StatefulWidget {
  @override
  _uploadpageState createState() => _uploadpageState();
}

class _uploadpageState extends State<uploadpage> {
  File? files;
  File? file;
  File? ff;
  String? couname;
  String? coudisc;
  String? couquet;
  String? couans;

  // UploadTask? task;
  // PlatformFile? file ;
  @override
  Widget build(BuildContext context) {
    double flatBorderRadius1 = 5;
    dynamic videoupload = 'vedio 1';


    dynamic presention = 'presentation 1';

    var formkey = GlobalKey<FormState>();
    final filepic = files != null ? files!.path : 'no file selected';

    final filename = file != null ? file!.path : 'no file selected';
    final filenamme = ff != null ? ff!.path : 'no file selected';
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffe0afa0),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => teacherhomepage(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
          elevation: 0),
      body: Container(
        height: double.infinity,
        color: Color(0xffe0afa0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(flatBorderRadius1),
                      color: Colors.white,
                    ),
                    height: 100,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        controller: coursenamecontroller,
                        onChanged: (value) {
                          couname = value;
                        },
                        decoration: InputDecoration(
                          labelText: 'coursename',
                          border: OutlineInputBorder(),
                        ),
                      ),
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
                    height: 100,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        controller: coursendiscricontroller,
                        onChanged: (value) {
                          coudisc = value;
                        },
                        decoration: InputDecoration(
                          labelText: 'discription',
                          border: OutlineInputBorder(),
                        ),
                      ),
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

                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(flatBorderRadius1),
                              color: Color(0xffe0afa0),
                            ),
                            height: 50,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              'course Image',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(flatBorderRadius1),
                                    color: Color(0xffe0afa0),
                                  ),

                                  width: double.infinity,
                                  child: MaterialButton(
                                    onPressed: selectimage,
                                    child:Text('Select Image',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),) ,
                                  ) ,)
                                ,
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffe0afa0),
                                    ),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: Text(filepic,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),)
                                )
                                ,
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(flatBorderRadius1),
                                    color: Color(0xffe0afa0),
                                  ),
                                  width: double.infinity,
                                  child: MaterialButton(
                                    onPressed:videoimage,
                                    child:Text('Upload image',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),) ,
                                  ) ,),],),),
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

                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(flatBorderRadius1),
                            color: Color(0xffe0afa0),
                          ),
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                              'Video',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                        ),
                        SizedBox(
                          height: 10,
                        ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(flatBorderRadius1),
                            color: Color(0xffe0afa0),
                          ),

                          width: double.infinity,
                          child: MaterialButton(
                          onPressed: selectfile,
                          child:Text('Select videos',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),) ,
                        ) ,)
                       ,
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffe0afa0),
                        ),
                            width: double.infinity,
                            alignment: Alignment.center,
                            height: 60,
                            child: Text(filename,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),)
                        )
                        ,
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(flatBorderRadius1),
                            color: Color(0xffe0afa0),
                          ),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed:videouploadd,
                            child:Text('Upload videos',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),) ,
                          ) ,),],),),
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

                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(flatBorderRadius1),
                              color: Color(0xffe0afa0),
                            ),
                            height: 50,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              'Presentition',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                          ),
                          SizedBox(
                            height: 10,
                          ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(flatBorderRadius1),
                          color: Color(0xffe0afa0),
                        ),

                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: select,
                          child:Text('Select file',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),) ,
                        ) ,)
                        ,
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffe0afa0),
                            ),
                            width: double.infinity,
                            alignment: Alignment.center,
                            height: 60,
                            child: Text(filenamme,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),)
                        )
                        ,
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(flatBorderRadius1),
                            color: Color(0xffe0afa0),
                          ),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: videopresentation,
                            child:Text('Upload file',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),) ,
                          ) ,),],),),

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
                    height: 200,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            controller: question,
                            onChanged: (value) {
                              couquet = value;
                            },
                            decoration: InputDecoration(
                             labelText: 'question',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child:

                          TextFormField(
                            controller: answer,
                            onChanged: (value) {
                              couans = value;
                            },
                            decoration: InputDecoration(
                              labelText: 'answer',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffe0afa0),
                          ),
                          height: 50,
                          width: 200,
                          child: MaterialButton(
                            onPressed: () {
                              FirebaseFirestore.instance.collection('questions').add({
                                'coursename' : couname,
                                'question': couquet,
                                'answer': coudisc,

                              });
                            },
                            child: Text(
                              'ADD',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  height: 50,
                  width: 270,
                  child: MaterialButton(
                    onPressed: () {
                      FirebaseFirestore.instance.collection('coursedetails').add({
                        'coursename' : couname,
                        'corsediscribtion' : coudisc,
                                            });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => teachvedeo(),
                        ),
                      );
                    },
                    child: Text(
                      'UPLOAD',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future selectimage() async{
    final result = await FilePicker.platform.pickFiles(allowMultiple: false,type: FileType.media);
    if(result == null) return;
    final  path = result.files .single.path!;

    setState(()=> files = File(path)  );
  }
 Future selectfile() async{
    final result = await FilePicker.platform.pickFiles(allowMultiple: false,type: FileType.video);
    if(result == null) return;
    final  path = result.files .single.path!;

    setState(()=> file = File(path)  );
 }
  Future select() async{
    final result = await FilePicker.platform.pickFiles(allowMultiple: false,type: FileType.custom,allowedExtensions: ['pdf', 'doc']);
    if(result == null) return;
    final  path = result.files .single.path!;

    setState(()=> ff = File(path) );
  }
  Future videoimage() async{
    if(files == null) return;
    final imourl =File(files!.path);
    final location = 'fileimage/${imourl}';
    FirebaseApi.uploadfile(location,files!);
    FirebaseFirestore.instance.collection('imeges').add({
      'imegeurl' : imourl.toString(),
      'location' : location.toString(),
      'coursename' : couname,
    });
    // final ref = FirebaseStorage.instance.ref().child(distnation);
    // ref.putFile(videourl);
    print('done');
  }
  Future videouploadd() async{
    if(file == null) return;
    final videourl =File(file!.path);
    final distnation = 'file/${videourl}';
    FirebaseApi.uploadfile(distnation,file!);
    FirebaseFirestore.instance.collection('videos').add({
      'videourl' : videourl.toString(),
      'distination' : distnation.toString(),
      'coursename' : couname,
    });
   // final ref = FirebaseStorage.instance.ref().child(distnation);
   // ref.putFile(videourl);
   print('done');
  }
 Future videopresentation() async{
    if(ff == null) return;
    final presenturl =File(ff!.path);
    final disttion = 'file peresentions/${presenturl}';
    FirebaseApipresent.uploadfile(disttion,ff!);
    FirebaseFirestore.instance.collection('presentation').add({
      'videourl' : presenturl.toString(),
      'distination' : disttion.toString(),
      'coursename' : couname,
    });
   // final ref = FirebaseStorage.instance.ref().child(distnation);
   // ref.putFile(videourl);
   print('done');
  }

}

  class FirebaseApi {
    static UploadTask? uploadfile(String distnation, File file) {
     try{
      final ref = FirebaseStorage.instance.ref(distnation);
      return ref.putFile(file);
     }on FirebaseException catch(e)
      {
        return null;
      }

    }

  }
class FirebaseApipresent {
  static UploadTask? uploadfile(String disttion, File ff) {
    try {
      final ref = FirebaseStorage.instance.ref(disttion);
      return ref.putFile(ff);
    } on FirebaseException catch (e) {
      return null;
    }
  }
}