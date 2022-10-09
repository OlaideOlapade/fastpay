import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';



class UserDetails{

  static registerUser({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmedPassword,
  })async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var newUser = [
      {'firstName': firstName, 'lastName': lastName, 'email': email, 'phoneNumber': phoneNumber, 'password': password, 'confirmPassword': confirmedPassword}
    ];

    prefs.setString('users', jsonEncode(newUser));
  }

  // static Transfer (
  //   personID,
  //   receiverName,
  //   amount,
  // ){
    
  // }
}