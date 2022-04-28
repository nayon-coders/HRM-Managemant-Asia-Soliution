import 'package:flutter/cupertino.dart';
import 'package:hrm_management/view/login/login.dart';

class UserLoginPageRoute extends CupertinoPageRoute {
  UserLoginPageRoute()
      : super(builder: (BuildContext context) => new UserLogin());


  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: new UserLogin());
  }
}