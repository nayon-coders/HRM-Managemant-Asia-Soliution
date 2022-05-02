import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({Key? key}) : super(key: key);

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch(index){
      case 0:
        Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
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
    );
  }
}
