import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet/shared/input_decor.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key, this.viewFunc}) : super(key: key);
  final Function? viewFunc;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isSeen = true;
  void checkedSeen() {
    setState(() {
      _isSeen = !_isSeen;
    });
  }

  bool? _isChecked = false;
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
                    'Create An Account',
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
                              hintText: 'Fullname',
                            ),
                          ),
                          SizedBox(
                            height: _size.height * 0.1 / 4,
                          ),
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
                            maxLines: 1,
                            decoration: inputDecor.copyWith(
                              hintText: 'Mobile',
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
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.comfortable,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                value: _isChecked,
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked = val;
                                  });
                                },
                              ),
                              Text(
                                'I have accept all right and terms conditions.',
                                style: TextStyle(
                                  wordSpacing: 1.0,
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Text('Sign Up'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: '  Sign In',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      widget.viewFunc!();
                                    },
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
}
