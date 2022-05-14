import 'package:flutter/cupertino.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color.fromRGBO(250, 220, 200, 0.5),
        child: Center(
          child: Image.asset("assets/images/lodin.gif"),
        ),
      ),
      
    );
  }
}
