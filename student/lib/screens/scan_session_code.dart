import 'package:flutter/material.dart';
import 'package:student/components/customTextField.dart';
import 'package:student/components/gradientButton.dart';
import 'package:student/screens/confirm_attendance.dart';

class ScaningPage extends StatefulWidget {
  ScaningPage({Key key}) : super(key: key);

  @override
  _ScaningPageState createState() => _ScaningPageState();
}

class _ScaningPageState extends State<ScaningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAECEF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Input attendance code:',
                style: TextStyle(fontSize: 18, color: Color(0xff555252)),
              ),
// Spacer
              SizedBox(height: 20),

              CustomTextField(
                obscureText: false,
              ),
// Spacer
              SizedBox(height: 45),

// Scan Button
              GradientButton(
                height: 50,
                width: 150,
                icon: Icon(
                  Icons.autorenew,
                  size: 20,
                  color: Colors.white,
                ),
                label: 'SCAN CODE',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfirmAttendance()));
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
