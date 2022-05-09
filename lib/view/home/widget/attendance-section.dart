import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/view/global-widget/big-text.dart';
import 'package:sizer/sizer.dart';

class AttendanceSection extends StatelessWidget {
  const AttendanceSection({Key? key}) : super(key: key);

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
                  child: const Text('Check In'),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(appColors.mainColor),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18.sp))),
                ),
                ElevatedButton(
                  child: Text('Check Out'),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(appColors.orange),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18.sp))),
                ),
              ],
            ),
            SizedBox(height: 2.h,),
          ],
        ),
      ),
    );
  }
}
