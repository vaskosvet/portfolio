import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  //adds padding 1/4th compared to the bottom one
                  ),
              flex: 1,
            ),
            //logo
            Image.asset(
              'assets/test.png',
              width: 120,
              height: 120,
              fit: BoxFit.fill,
            ),

            const SizedBox(height: 65), //padding between logo and inputs
            TextFieldInput(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              textEditingController: _emailController,
            ),
            const SizedBox(
              height: 20,
            ), //padding between inputs
            TextFieldInput(
              hintText: 'Password',
              textInputType: TextInputType.text,
              textEditingController: _passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 24),
            //button login
            Container(
              child:
                  const Text('Log in', style: TextStyle(color: primaryColor)),
              width: 150,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Flexible(
              //adds 3/4  padding compared to that  on top
              child: Container(),
              flex: 3,
            ),
          ],
        ),
      )),
    );
  }
}
