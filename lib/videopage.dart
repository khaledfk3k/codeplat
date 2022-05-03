import 'package:coding_for_child/buypage.dart';
import 'package:coding_for_child/exampage.dart';
import 'package:coding_for_child/main_reusable_component.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class vedeopage extends StatefulWidget {
  @override
  _vedeopageState createState() => _vedeopageState();
}

class _vedeopageState extends State<vedeopage> {
  dynamic coursename = 'Course name';
  dynamic videonumber = 1;
  late VideoPlayerController controller ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset('assets/videos/')..initialize().then((value) =>
    {
     setState(() {

    })
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe0afa0),
        toolbarHeight: 37,
leadingWidth: 3,
        leading:IconButton (
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => buypage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 20,
            color: Color(0xffe0afa0),
          ),
        ),
        title: Text(coursename,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),

        elevation: 0,
      ),
      body: Container(
        color: Color(0xffe0afa0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 250,
                child:
                ListView(
                  children: [
                    Center(
                      child: controller.value.isInitialized?
                     AspectRatio(child:VideoPlayer(controller), aspectRatio : controller.value.aspectRatio,): Container() ,

                    ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){
                          controller.play();
                        }, child:Icon(Icons.play_arrow) ),
                        ElevatedButton(onPressed: (){
                          controller.pause();
                        }, child:Icon(Icons.pause) )
                      ],
                    )
                  ],
                ),

              ),
            ),

            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 40,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Video',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Presention',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child:  Container(
                alignment: Alignment.topRight,
                height: 455,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return videotextbutton(vtonpressed: (){});
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 2.5,
                    );
                  },
                  itemCount: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
              ),
            ),),
            Padding(
              padding: EdgeInsets.all(5),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => exampage(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 40,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Go to Exam',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
