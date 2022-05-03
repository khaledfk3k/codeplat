import 'package:coding_for_child/cubit/states.dart';
import 'package:coding_for_child/network/dio_helper.dart';
import 'package:coding_for_child/network/endpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class logincubit extends Cubit<loginstate>
{
  logincubit() : super(loginintial());
  static logincubit get(context) => BlocProvider.of(context);
  void userlogin({
  required String email,
    required String password,
})
  {
    emit(loginloading());
    DioHelper.postdata(url: LOGIN, data: {
      'email':email,
      'password':password,
    },).then((value) {
      print(value.data);
      emit(loginsuccess());
    }).catchError((error) {
      emit(loginerror(error.toString()));
    });
  }

}

