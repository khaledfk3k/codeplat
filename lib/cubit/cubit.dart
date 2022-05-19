import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coding_for_child/class_model/class_model.dart';
import 'package:coding_for_child/cubit/states.dart';
import 'package:coding_for_child/network/dio_helper.dart';
import 'package:coding_for_child/network/endpoint.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class logincubit extends Cubit<loginstate>
{
  logincubit() : super(loginintial());
  static logincubit get(context) => BlocProvider.of(context);
  late loginscreen loginmodel;
  void userlogin({
  required String email,
    required String password,
})
  {
    emit(loginloading());
  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
    print(value.user?.email);
    print(value.user?.uid);
    emit(loginsuccess(loginmodel));
  })
      .catchError((onError){
    emit(loginerror(onError.toString())  );
  });
  }
  List<links> vedeolinks = [];

  void getvideolinks()
  {
   FirebaseFirestore.instance.collection('videos')
       .get().then((value) {
     value.docs.forEach((element) {
       vedeolinks.add(links.fromjson(element.data()));
     });
     print('succes');
   }).catchError((onError){print('error');});
  }

}

