import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/view/global-widget/top-bar.dart';
import 'package:hrm_management/view/monthly%20attendance/widget/attendance-list.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h,),
                 child: Column(
                   children: [
                     Row(
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
                     SizedBox(height: 3.h,),
                     TextFormField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(
                           Icons.search_rounded,
                           color: appColors.mainColor,
                         ),
                         suffixIcon: Icon(
                           Icons.calendar_today_rounded,
                           color: appColors.mainColor,
                         ),
                         hintText: "Search",
                         contentPadding: EdgeInsets.only(left: 10, right: 10),
                         border: OutlineInputBorder(
                           borderSide: BorderSide(width: 1)
                         )
                       ),
                     ),
                     SizedBox(height: 1.h,),
                     Container(
                       padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 2.h),
                       color: Color(0xffdddddd),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           reportsText("Date"),
                           reportsText("In"),
                           reportsText("Out"),
                           reportsText("Action"),
                         ],
                       ),

                     ),
                   ],
                 ),
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h, ),
                  child: ListView(
                    children: [
                      AttendanceList(),
                      const SizedBox(height: 3,),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),
                      AttendanceList(),

                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

  Widget reportsText(String text){
    return Center(
      child: Align(
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(
            color: appColors.mainColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
        )
        ),
      ),
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
