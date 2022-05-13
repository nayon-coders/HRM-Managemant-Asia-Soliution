import 'package:flutter/cupertino.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);
  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  late CalendarController _calendarController;
  late DateTime _headerDate;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
    _headerDate = DateTime.now();
  }
  @override
  Widget build(BuildContext context) {
    return TableCalendar(

        availableGestures: AvailableGestures.all,
        initialSelectedDay: DateTime.now(),
        daysOfWeekStyle: DaysOfWeekStyle(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle
          )
        ),
      startDay: DateTime(2015),
      endDay: DateTime(2050),
      locale: 'en_US',
      calendarController: _calendarController,
      availableCalendarFormats:const {CalendarFormat.month : 'Month', CalendarFormat.week : 'Week'},
        calendarStyle: CalendarStyle(
          selectedColor: appColors.mainColor,
          selectedStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: appColors.white
          )
        ),
       initialCalendarFormat: CalendarFormat.month,
        onVisibleDaysChanged: (_, __, ___) {
          setState(() {
            _headerDate = _calendarController.focusedDay;
          });
      },

    );
  }
}

