import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrm_management/Utility/color.dart';
import 'package:sizer/sizer.dart';

class AttendanceList extends StatelessWidget {
  const AttendanceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 1.h),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border(
          bottom: BorderSide(width: 1),
          left: BorderSide(width: 1),
          right: BorderSide(width: 1),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          reportsText("May 8, 2022"),
          reportsText("10:54 AM	"),
          reportsText("10:54 AM	"),
          GestureDetector(
            onTap: (){
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          ShowInfoRows("Date: ", "May 8, 2022	"),
                          ShowInfoRows("Status: ", "Present	"),
                          ShowInfoRows("Clock In: ", "10:54 AM"),
                          ShowInfoRows("Clock Out: ", "10:54 AM"),
                          ShowInfoRows("Late: ", "-00:00:01	"),
                          ShowInfoRows("Early Leave: ", "-00:00:01	"),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                color: appColors.mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("View", style: TextStyle(color: appColors.white),),
            ),
          )
        ],
      ),
    );
  }


  Widget reportsText(String text){
    return Text(text,
        style: TextStyle(
          color: appColors.titleTextColor,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        )
    );
  }
  Widget ShowInfoRows(String text, String value){
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(1),

      child: Row(
        children: [
          Text(text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
            ),
          ),

          Text(value,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
            ),)
        ],
      ),
    );
  }
}
