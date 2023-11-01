import 'package:flutter/material.dart';
import 'package:native_animated_splash/screens/home_page.dart';
import 'package:native_animated_splash/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarApp(),
    );
  }
}
