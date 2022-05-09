import 'package:flutter/material.dart';
import '../global-widget/top-bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff1f1f1f1f1),
        body: Column(
          children:  [
            //top section
            TopBar(pageName: 'Profile',),
            
            Image.network("https://res.cloudinary.com/teepublic/image/private/s--OhLHtLWr--/t_Resized%20Artwork/c_fit,g_north_west,h_1054,w_1054/co_ffffff,e_outline:53/co_ffffff,e_outline:inner_fill:53/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1575503762/production/designs/7039866_0.jpg")

          ],
        ),

      ),
    );

  }
}
