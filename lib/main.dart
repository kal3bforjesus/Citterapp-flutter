import 'package:flutter/material.dart';
import 'package:kal3b/Pages/signup.dart';
import 'package:kal3b/Pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: SignupPage(),
    );
  }
}