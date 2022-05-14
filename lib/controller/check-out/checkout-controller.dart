import 'dart:convert';
import 'package:hrm_management/controller/user_controller/user-auth.dart';
import 'package:hrm_management/services/api_services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class CheckOutController{

  CheckOutMethod()async{
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    //Store Data
    var token = localStorage.getString('token');

    var fullUrl = ApiService.checkout;
    return await http.post(
      Uri.parse(fullUrl),
      headers: {
        'Authorization' : 'Bearer $token',
      },
    );

  }

}