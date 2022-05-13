import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/view/home/widget/apply-for-leave.dart';
import 'package:hrm_management/view/home/widget/regularize_attendance.dart';
import '../global-widget/clock.dart';
import 'widget/attendance-section.dart';
import 'package:sizer/sizer.dart';
import '../global-widget/top-bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff1f1f1f1f1),
        body: Column(
            children:  [
              //top section
              TopBar(pageName: 'Home Page',),
              //body part
              Expanded(
                  child: ListView(
                    children: [
                      //attendance option
                       AttendanceSection(),
                      //clock
                      AnalogClock(),
                      //regularize attendance
                      const RegulaizeAttendance(),
                      //apply for leave
                      const ApplyForLeave(),
                      const SizedBox(height: 15,),
                    ],
                  )
              ),//end body part

            ],
        ),

      ),
    );

  }
}
