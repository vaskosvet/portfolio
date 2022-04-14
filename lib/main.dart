import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/login_screen.dart';
import 'utils/constants.dart';

void main() async {
  //ensuring firebase will initialize before the app is run
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
