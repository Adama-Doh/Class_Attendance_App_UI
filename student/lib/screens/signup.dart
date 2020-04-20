import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:student/components/customTextField.dart';
import 'package:student/components/gradientButton.dart';

import 'login.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFBBD1E7),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.grey,
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      obscureText: false,
                      prefixIcon: Icon(
                        Icons.fiber_pin,
                        color: Color(0xFFB0C8E2),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      obscureText: false,
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Color(0xFFB0C8E2),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      obscureText: false,
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Color(0xFFB0C8E2),
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      obscureText: true,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFFB0C8E2),
                      ),
                    ),
                    SizedBox(height: 20),
                    GradientButton(
                      height: 50,
                      width: 150,
                      label: 'REGISTER',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
