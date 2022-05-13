import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/services/api_services.dart';
import 'package:hrm_management/view/global-widget/big-text.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/check-in/checkin-controller.dart';
import '../../../controller/user_controller/user-auth.dart';
import '../../global-widget/notifiy.dart';

class AttendanceSection extends StatefulWidget {
  @override
  State<AttendanceSection> createState() => _AttendanceSectionState();
}

class _AttendanceSectionState extends State<AttendanceSection> {
  bool idChickin = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h, left: 3.h, right: 3.h),
      child: Container(
        padding: EdgeInsets.all(2.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appColors.white,
        ),
        child: Column(
          children: [
            BigText(text: "Attendance",),
            SizedBox(height: 4.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: idChickin != true ? const Text('Check In')
                  : CircularProgressIndicator(
                    color: appColors.white,
                  ),
                  onPressed: () {

                    _checkIn();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(appColors.mainColor),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15.sp))),
                ),
                ElevatedButton(
                  child: Text('Check Out'),
                  onPressed: () {
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(appColors.orange),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15.sp))),
                ),
              ],
            ),
            SizedBox(height: 2.h,),
          ],
        ),
      ),
    );
  }

  void _checkIn() async{
    setState((){
      idChickin = true;
    });

     var response = await CheckInController().CheckInMethod();
     print(response.statusCode);

     if(response.statusCode == 201){
       setState((){
         idChickin = false;
         Flushbar(
           title: "Attendance Success",
           titleColor: appColors.white,
           message: "Employee Successfully Clock In.",
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
       });
       print(response.statusCode);

     }else{
      print(response.statusCode);
     }

  }
}
