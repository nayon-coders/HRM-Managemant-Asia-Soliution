import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/view/global-widget/top-bar.dart';
import 'package:hrm_management/view/monthly%20attendance/widget/search-type-button.dart';

class MonthluAttendance extends StatefulWidget {
  const MonthluAttendance({Key? key}) : super(key: key);

  @override
  _MonthluAttendanceState createState() => _MonthluAttendanceState();
}

class _MonthluAttendanceState extends State<MonthluAttendance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              TopBar(pageName: "Monthly Attendance"),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    MonthlyattendanceSearchButton(),
                    SizedBox(width: 10,),
                    MonthlyattendanceSearchButton(),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
