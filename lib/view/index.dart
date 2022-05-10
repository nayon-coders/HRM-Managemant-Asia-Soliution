import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:hrm_management/view/home/home.dart';
import 'package:hrm_management/view/monthly%20attendance/monthly-attendance.dart';
import 'package:hrm_management/view/profile/profile.dart';
import 'package:hrm_management/view/working.dart';

class IndexScreen extends StatefulWidget {
    bool? profile;
  IndexScreen({Key? key, this.profile = false}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const working(),
    const working(),
    const MonthluAttendance(),
    const working(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.profile = false;
    });
    widget.profile = false;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: widget.profile == true ? const Profile() : _children[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Pay Slip',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Leave List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Monthly\nAttendance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Attendance\nRegularization',
            ),
          ],

          currentIndex: _selectedIndex,
          selectedItemColor: appColors.mainColor,
          onTap: _onItemTapped,

        ),
      ),
    );
  }
}
