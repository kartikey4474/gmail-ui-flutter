import 'package:flutter/material.dart';
import 'package:gmail_clone/home_screen.dart';
import 'package:gmail_clone/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail clone',
      home: HomeScreen(),
    );
  }
}
