import 'package:flutter/material.dart';
import '../model/menu/menu-item.dart';

class MenuItems{

  static const List<MenuItemModel> menuItems = [
    profile,
    logOut
  ];
  static const profile = MenuItemModel(
      text: "Profile",
      icon: Icons.supervised_user_circle_outlined
  );

  static const logOut = MenuItemModel(
      text: "Log Out",
      icon: Icons.logout
  );




}