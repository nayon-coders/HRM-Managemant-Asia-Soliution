import 'package:flutter/material.dart';
import 'package:hrm_management/view/global-widget/big-text.dart';
import 'package:sizer/sizer.dart';

class RegulaizeAttendance extends StatelessWidget {
  const RegulaizeAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2.h, left: 3.h, right: 3.h),
      width: double.infinity,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.only(left: 2.h, right: 2.h, top: 3.h, bottom: 3.h ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Regularize Attendance", ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 1,
                color: Color(0xFFdddddd),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  BigText(text: "Regularize Attendance: ", size: 14.sp, ),
                  BigText(text: "0", size: 17.sp,),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
