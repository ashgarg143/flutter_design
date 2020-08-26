import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'BottomNavBar.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarNotifier>(
      builder: (context,navBar,child) => Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: navBar.navItems[navBar.selectedIndex].des,
      ),
    );
  }
}
