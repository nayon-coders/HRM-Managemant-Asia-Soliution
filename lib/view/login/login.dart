import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/controller/user_controller/user_login_controller.dart';
import 'package:hrm_management/view/home/home.dart';
import 'package:hrm_management/view/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';

class UserLogin extends StatefulWidget {


  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {

  bool? isLogin = false;

  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const ScrollPhysics(),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  scale: 0.5,
                  image: AssetImage("assets/images/map2.png",),
                )
            ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 10.h),
                margin: EdgeInsets.only(bottom: 0.h, ),
                child:  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ASIA',
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                            color: appColors.whiteText,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        TextFormField(
                          controller: _email,
                          decoration: InputDecoration(
                            contentPadding:  EdgeInsets.only(left: 20),
                            hintText: "User Name",
                            hintStyle: TextStyle(
                              color: appColors.whiteText,
                            ),
                            filled: true,
                            fillColor: appColors.inputField,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: const BorderSide(width: 1, color: Colors.redAccent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: appColors.inputField),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8,),
                        TextFormField(
                          controller: _pass,
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding:  EdgeInsets.only(left: 20),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: appColors.whiteText,
                              ),
                              filled: true,
                              fillColor: appColors.inputField,
                              counterStyle: const TextStyle(
                                color: appColors.whiteText
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: const BorderSide(width: 1, color: Colors.redAccent),
                              ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: appColors.inputField),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            suffixIcon: const Icon(
                              Icons.remove_red_eye_rounded,
                              color: appColors.whiteText,
                            )
                          ),
                        ),
                        const SizedBox(height: 15,),
                        GestureDetector(
                          onTap: () {
                            userLogin(context);

                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>IndexScreen()));

                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                              height: 49,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: appColors.inputField,
                              ),
                            child: Center(
                                child: isLogin != true ? Text("Login",
                              style: TextStyle(
                                color: appColors.whiteText,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.sp,
                              ),
                            ): CircularProgressIndicator(
                                  color: appColors.white,
                                )),
                          ),
                        )
                      ],
                    )
                )
              ),
            ),
        ],
      ),
    );
  }
  void userLogin(BuildContext context,) async{
    setState(() {
      isLogin = true;
    });
    try{

      var response = await http.post(Uri.parse("https://asia.net.in/api/login"),
        body: {
          "email": _email.text,
          "password": _pass.text,
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

        Flushbar(
          title: "login Success",
          titleColor: appColors.white,
          message: "Your are login successfully",
          icon:  Icon(
            Icons.done,
            size: 28.0,
            color: appColors.success,
          ),
          messageSize: 12.sp,
          messageColor: appColors.success,
          borderWidth: 1,
          borderColor: Colors.grey,
          margin: EdgeInsets.all(6.0),
          flushbarStyle: FlushbarStyle.FLOATING,
          flushbarPosition: FlushbarPosition.TOP,
          textDirection: Directionality.of(context),
          borderRadius: BorderRadius.circular(12),
          duration: Duration(seconds: 4),
          leftBarIndicatorColor: appColors.success,
        )..show(context);

      }else{
        print(response.statusCode);
      }
    }catch(e){
      print(e);
    }
    setState(() {
      isLogin = false;
    });
  }

}

