import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/view/global-widget/top-bar.dart';
import 'package:hrm_management/view/monthly%20attendance/widget/attendance-list.dart';
import 'package:hrm_management/view/monthly%20attendance/widget/calander/calnader.dart';
import 'package:hrm_management/view/monthly%20attendance/widget/search-type-button.dart';
import 'package:sizer/sizer.dart';

class MonthluAttendance extends StatefulWidget {
  const MonthluAttendance({Key? key}) : super(key: key);

  @override
  _MonthluAttendanceState createState() => _MonthluAttendanceState();
}

class _MonthluAttendanceState extends State<MonthluAttendance> {

  bool montlySearchButton = false;
  bool dailySearchButton = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              TopBar(pageName: "Monthly Attendance"),
              SizedBox(height: 3.h,),
              Calender(),

            ],
          ),
        )
    );
  }

}

