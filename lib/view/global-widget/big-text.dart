import 'package:flutter/cupertino.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:sizer/sizer.dart';

class BigText extends StatelessWidget {
  final String text;
  double? size;
   BigText({Key? key, required this.text, this.size = 22}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      style:  TextStyle(
        color: appColors.titleTextColor,
        fontSize: size,
        fontWeight: FontWeight.w600,
        fontFamily: "RobotoSlab",
      ),
    );
  }
}
