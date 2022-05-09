import 'package:flutter/cupertino.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:sizer/sizer.dart';

class Button extends StatelessWidget {
  final String text;
  Color? buttonColor;
  Button({Key? key, required this.text, this.buttonColor= appColors.mainColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3.h, right: 3.h, top: 2.h, bottom: 2.h),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(text,
        style: TextStyle(
          color: appColors.white,
          fontWeight: FontWeight.w600,
          fontFamily: "RobotoSlab",
          fontSize: 13.sp,
        ),
      ),
    );
  }
}
