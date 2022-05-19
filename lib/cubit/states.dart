import 'package:coding_for_child/class_model/class_model.dart';

abstract class loginstate {}

class loginintial extends loginstate {}

class loginloading extends loginstate {}

class loginsuccess extends loginstate {
  final loginscreen loginmodel;
  loginsuccess(this.loginmodel);
}

class loginerror extends loginstate {
  final String error;
  loginerror(this.error);
}

class showenpass extends loginstate {}
