// To parse this JSON data, do
//
//     final userLogin = userLoginFromJson(jsonString);

import 'dart:convert';

UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));

String userLoginToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {

  String message;
  String apiToken;

  UserLogin({
    required this.message,
    required this.apiToken,
  });


  factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
    message: json["message"],
    apiToken: json["api_token"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "api_token": apiToken,
  };
}
