import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design/BottomNavBar.dart';
import 'package:flutter_design/NavBarItem.dart';
import 'package:provider/provider.dart';

import 'home/HomeScreen.dart';
import 'StartScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark

    ));
    return ChangeNotifierProvider(
      create: (context) => NavBarNotifier(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Start(),
      ),
    );
  }
}

