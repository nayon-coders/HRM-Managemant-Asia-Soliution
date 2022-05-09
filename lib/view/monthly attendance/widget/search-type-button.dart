import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:sizer/sizer.dart';

class MonthlyattendanceSearchButton extends StatelessWidget {
  const MonthlyattendanceSearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 2, color: appColors.mainColor),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 1.h, right: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 2, color: appColors.mainColor),
                ),
              ),
              Text("Monthly Reports",
              style: TextStyle(
                color: appColors.mainColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
              ),),
              Icon(
                Icons.calendar_month_rounded,
                size: 15.sp,
                color: appColors.mainColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

