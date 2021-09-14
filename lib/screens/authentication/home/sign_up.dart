import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet/shared/input_decor.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
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
                  padding: const EdgeInsets.symmetric(vertical: 50),
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
                          maxLines: 1,
                          decoration: inputDecor.copyWith(
                            hintText: 'password',
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              value: _isChecked,
                              tristate: true,
                              onChanged: (val) {
                                setState(() {
                                  _isChecked = val!;
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
