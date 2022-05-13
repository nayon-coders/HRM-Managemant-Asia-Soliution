import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/services/api_services.dart';
import 'package:hrm_management/view/home/home.dart';
import 'package:hrm_management/view/login/login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class UserLoginController{

  void userLogin(String email, String pass, BuildContext context,) async{
    print(email);
    print(pass);
    try{

      var response = await http.post(Uri.parse(ApiService.login),
        body: {
          "email": email,
          "password": pass,
        },


      );
      var body = jsonDecode(response.body);
      if(response.statusCode == 201){

        print(response.statusCode);
        print(response.body);
        //create instance
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        //Store Data
        localStorage.setString('token', body['api_token']);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));

      }else{
        print(response.statusCode);
      }

    }catch(e){
      print(e);
    }





  }

  // Future<Future<http.Response>> loginUser( data, urlEndingPoint) async{
  //     return http.post(
  //         Uri.parse(ApiService.login),
  //        body: jsonEncode(data),
  //       headers: setHeaders()
  //     );
  // }
  setHeaders()=>{
    'Accept' : 'application/json',
    //'Content-Type' : 'application/json',
    //'X-Header-Token' : 'base64:KWyE5YqjEnsf0L+9R7unn5QimC8eTW21sm1WalIA2+Y=',
  };
}