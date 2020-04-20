import 'package:flutter/material.dart';
import 'package:student/components/customTextField.dart';
import 'package:student/components/gradientButton.dart';
import 'package:student/screens/scan_session_code.dart';
import 'package:student/screens/signup.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBBD1E7),
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ListView(
// ListView padding
          padding: EdgeInsets.symmetric(horizontal: 40),
          children: <Widget>[
//Spacer
            SizedBox(height: 85),

            Center(
              child: Column(
                children: <Widget>[
// App Icon
                  Image.asset('assets/images/logo.png'),

// App name
                  Text(
                    'Attendance App.',
                    style: TextStyle(
                      fontSize: 25,
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

// Spacer
                  SizedBox(height: 50),

//Username
                  CustomTextField(
                    obscureText: false,
                    prefixIcon:
                        Icon(Icons.account_circle, color: Color(0xFFB0C8E2)),
                  ),

//spacer
                  SizedBox(height: 20),

//Password
                  CustomTextField(
                    obscureText: true,
                    prefixIcon: Icon(Icons.lock, color: Color(0xFFB0C8E2)),
                  ),

//spacer
                  SizedBox(height: 32),

//Login Button
                  GradientButton(
                      height: 35,
                      width: 150,
                      label: 'LOGIN',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScaningPage()));
                      }),
                  SizedBox(height: 30),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.blue, fontSize: 18, decoration: TextDecoration.underline),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
