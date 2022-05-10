import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/view/global-widget/top-bar.dart';
import 'package:hrm_management/view/monthly%20attendance/widget/search-type-button.dart';

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

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                         montlySearchMethod();
                        });
                      },
                      child: montlySearchButton == true
                          ? MonthlyattendanceSearchButton(
                            text: 'Monthly Reports',
                            bgColor: appColors.mainColor,
                            textColor: appColors.white,)
                          : MonthlyattendanceSearchButton(text: 'Monthly Reports',),
                    ),
                   const SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          dailySearchMethod();
                        },
                        child: dailySearchButton == true
                            ? MonthlyattendanceSearchButton(
                          text: 'Daily Reports',
                          bgColor: appColors.mainColor,
                          textColor: appColors.white,)
                            : MonthlyattendanceSearchButton(text: 'Daily Reports',),
                    ),



                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  //montlySearchMethod();
    void montlySearchMethod(){
       setState(() {
         montlySearchButton = true;
         dailySearchButton = false;
       });
    }

  void dailySearchMethod(){
    setState(() {
      montlySearchButton = false;
      dailySearchButton = true;
    });
  }
}
