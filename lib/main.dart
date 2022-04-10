import 'package:flutter/material.dart';
import 'package:portfolio/screens/login_screen.dart';
import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      home: const LoginScreen(),
    ); //test
  }
}
