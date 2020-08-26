import 'package:flutter/material.dart';

import 'BottomNavBar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      //bottomNavigationBar: BottomNavBar(),
      body:Center(
        child: Text(
          "Profile"
        ),
      )
    );
  }
}
