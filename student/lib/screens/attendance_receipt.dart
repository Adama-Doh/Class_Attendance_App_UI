import 'package:flutter/material.dart';

class AttendanceReceipt extends StatelessWidget {
  const AttendanceReceipt({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAECEF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Attendance Checked Successfully!!",
              style: TextStyle(
                fontFamily: "Ubuntu",
                fontSize: 16,
                color: Color(0xff212623),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 49.00,
            width: 49.00,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3.00,
                color: Color(0xff4d96e2),
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, color: Color(0xff4d96e2)),
          ),
        ],
      ),
    );
  }
}
