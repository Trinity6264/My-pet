import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet/shared/input_decor.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key, required this.viewFunc}) : super(key: key);
  Function? viewFunc;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isSeen = true;
  void checkedSeen() {
    setState(() {
      _isSeen = !_isSeen;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: FaIcon(
                      FontAwesomeIcons.paw,
                      color: Colors.grey.shade500,
                      size: 60,
                    ),
                  ),
                  Text(
                    'Login To Pet Animal',
                    style: GoogleFonts.aldrich(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 35),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                            maxLines: 1,
                            decoration: inputDecor.copyWith(
                              hintText: 'Email',
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.1 / 4,
                          ),
                          TextFormField(
                            obscureText: _isSeen,
                            maxLines: 1,
                            decoration: inputDecor.copyWith(
                              hintText: 'password',
                              suffixIcon: IconButton(
                                onPressed: checkedSeen,
                                icon: Icon(FontAwesomeIcons.eye),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.1 / 4,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Text('Login'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.1 / 5,
                          ),
                          Center(
                            child: Text(
                              'or',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.1 / 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _socialLoginFunc(
                                  FontAwesomeIcons.facebookF, 'Facebook'),
                              _socialLoginFunc(
                                  FontAwesomeIcons.google, 'Google'),
                              _socialLoginFunc(
                                  FontAwesomeIcons.instagram, 'Instagram'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text:
                                      'If You Don\'t Have An Account With Us?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Create Account',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.0,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => widget.viewFunc!(),
                                ),
                              ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialLoginFunc(IconData icon, String name) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(name)));
      },
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          maxRadius: 20,
          child: FaIcon(icon, size: 20),
        ),
      ),
    );
  }
}
