import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:sizer/sizer.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return  Flushbar(
      title: "login Success",
      titleColor: appColors.white,
      message: "Your are login successfully",
      icon:  Icon(
        Icons.done,
        size: 28.0,
        color: appColors.success,
      ),
      messageSize: 12.sp,
      messageColor: appColors.success,
      borderWidth: 1,
      borderColor: Colors.grey,
      margin: EdgeInsets.all(6.0),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
      textDirection: Directionality.of(context),
      borderRadius: BorderRadius.circular(12),
      duration: Duration(seconds: 4),
      leftBarIndicatorColor: appColors.success,
    )..show(context);
  }
}
