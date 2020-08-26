import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../BottomNavBar.dart';
import 'Tabs.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/business.png"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello XYZ!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "@xyza",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Tabs()
          ],
        ),
      ),
    );
  }
}
