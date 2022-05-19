import 'package:adobe_xd/adobe_xd.dart';
import 'package:coding_for_child/register/child%20register/child_login_screen.dart';
import 'package:coding_for_child/register/child%20register/teacher_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class chooseuser extends StatelessWidget {
  chooseuser() : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0afa0),
      body: Stack(
        children: <Widget>[
          // teacher create new account
          Pinned.fromPins(
            Pin(start: 77.0, end: 77.0),
            Pin(size: 194.0, middle: 0.2714),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => teacherloginscreen(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/home_2.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
          ),
          // child create new account
          Pinned.fromPins(
            Pin(size: 258.0, start: 77.0),
            Pin(size: 203.0, start: 500.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => childloginscreen(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/images/home_3.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
