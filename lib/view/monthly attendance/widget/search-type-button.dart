import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:sizer/sizer.dart';

class MonthlyattendanceSearchButton extends StatelessWidget {
  final String text;
  Color? bgColor;
  Color? textColor;
  Color? radiusColor;
  MonthlyattendanceSearchButton({Key? key,
    required this.text,
    this.bgColor = appColors.white,
    this.textColor = appColors.mainColor,
    this.radiusColor = appColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 2, color: appColors.mainColor),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 1.h, right: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  color: radiusColor,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1, color: appColors.mainColor),
                ),
              ),
              const SizedBox(width: 2,),
              Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),),
              const SizedBox(width: 2,),
              Icon(
                  Icons.calendar_today_rounded,
                size: 12.sp,
                color: textColor,
              ),
            ],
          ),
        ),
    );
  }
}

