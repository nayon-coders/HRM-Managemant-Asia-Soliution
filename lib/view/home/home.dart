import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import '../global-widget/clock.dart';
import 'widget/attendance-section.dart';
import 'package:sizer/sizer.dart';
import '../global-widget/bottom-navigation-bar.dart';
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

              //attendance option
              AttendanceSection(),
              AnalogClock(),

            ],
        ),

        bottomNavigationBar: const BottomMenuBar(),
      ),
    );

  }
}
