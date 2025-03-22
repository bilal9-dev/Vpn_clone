import 'package:flutter/material.dart';
 import 'package:vpn_ui/view_screen/drawer/drawerscreen.dart';
import 'package:vpn_ui/view_screen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Drawerscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
