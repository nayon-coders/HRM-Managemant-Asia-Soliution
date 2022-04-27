import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/view/login/login,dart.dart';
import 'package:sizer/sizer.dart';
import 'package:phlox_animations/phlox_animations.dart';


class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);
  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  //navigate user login page

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(seconds: 2),() => Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLogin())));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/map.png",),
                    )
                  ),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.h, ),
                      child:  PhloxAnimations(
                        duration: const Duration(milliseconds: 900),
                        child: Text('ASIA',
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                            color: appColors.whiteText,
                          ),
                        ),
                        fromScale: 0,
                        toScale: 1,
                      ),
                    ),
                  ),
              ),




            ],
          )
        ],
      ),
    );
  }
}
