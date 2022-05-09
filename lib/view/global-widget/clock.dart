import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_analog_clock/flutter_analog_clock_painter.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class AnalogClock extends StatelessWidget {

  final time = new DateFormat('hh:mm a');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h,),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
        decoration: BoxDecoration(
          color: appColors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: FlutterAnalogClock(
          dateTime: DateTime.now(),
          dialPlateColor: Colors.white,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          secondHandColor: Colors.black,
          numberColor: Colors.black,
          borderColor: Colors.black,
          tickColor: Colors.black,
          centerPointColor: Colors.black,
          showBorder: true,
          showTicks: true,
          showMinuteHand: true,
          showSecondHand: true,
          showNumber: true,
          borderWidth: 5.0,
          hourNumberScale: .10,
          hourNumbers: FlutterAnalogClockPainter.defaultHourNumbers,
          isLive: true,
          width: 200.0,
          height: 200.0,
          decoration: const BoxDecoration(),
          child: Text(time.format(DateTime.now()),
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600
            ),
          ),

        ),
      ),
    );
  }
}