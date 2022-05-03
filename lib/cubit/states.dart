abstract class loginstate {}

class loginintial extends loginstate {}

class loginloading extends loginstate {}

class loginsuccess extends loginstate {}

class loginerror extends loginstate {
  final String error;
  loginerror(this.error);
}

class showenpass extends loginstate {}
