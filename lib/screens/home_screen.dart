import 'package:flutter/material.dart';
import 'package:portfolio/screens/login_screen.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/reusable_widgets.dart';

//Copied login screen just to see if page transition works
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            //main column(box) where all the other widgets are
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                    //adds padding 1/3rd compared to the bottom one
                    ),
                flex: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  width: 200,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    color: Colors.white,
                  ),
                  child: const Text('Back',
                      style: TextStyle(
                        color: primaryColor,
                      )),
                ),
              ),
              Flexible(
                child: Container(
                    //adds padding 1/3rd compared to the bottom one
                    ),
                flex: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
