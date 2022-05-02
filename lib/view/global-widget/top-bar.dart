import 'package:flutter/material.dart';
import 'package:hrm_management/data/menu-items.dart';
import 'package:hrm_management/model/menu/menu-item.dart';
import 'package:hrm_management/view/profile/profile.dart';
import 'package:sizer/sizer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class TopBar extends StatelessWidget {
final String pageName;
TopBar({required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Images
            Stack(
              children: [
                Image.asset("assets/images/user.png"),
                Container(
                  height: 10.sp,
                  width: 10.sp,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100),
                  ),
                )
              ],
            ),

            Text("$pageName",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp
              ),
            ),

            PopupMenuButton<MenuItemModel>(
              onSelected: (item)=> onSelect(context, item),
                itemBuilder: (context) => [
                  ...MenuItems.menuItems.map((buildItem))
                ]
            ),

          ],
        ),
      ),
    );
  }
  PopupMenuItem<MenuItemModel> buildItem(MenuItemModel item) =>PopupMenuItem(
    value: item,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              item.icon,
            ),
            const SizedBox(width: 10,),
            Text(item.text),

          ],
        ),
      ));

  onSelect(BuildContext context, MenuItemModel item) {
    switch (item){
      case MenuItems.profile:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
        break;
      case MenuItems.logOut:
        print("Logout");
      break;
    }
  }
}

