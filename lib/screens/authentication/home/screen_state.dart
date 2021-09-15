import 'package:flutter/material.dart';
import 'package:pet/screens/authentication/home/sign_in.dart';
import 'package:pet/screens/authentication/home/sign_up.dart';

class ScreenState extends StatefulWidget {
  ScreenState({Key? key}) : super(key: key);

  @override
  _ScreenStateState createState() => _ScreenStateState();
}

class _ScreenStateState extends State<ScreenState> {
  bool toggleView = false;

  void viewFunc() {
    setState(() {
      toggleView = !toggleView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return toggleView ? SignIn(viewFunc: viewFunc) : SignUp(viewFunc: viewFunc);
  }
}
