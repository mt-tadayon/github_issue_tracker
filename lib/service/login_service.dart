import 'package:flutter/material.dart';

class LoginService extends ChangeNotifier{
  String username;
  String password;

  void userLogin(GlobalKey<FormState> formKey) {
    if(formKey.currentState.validate()) {
      //TODO: login user to GitHub
    }
  }
}