import 'package:flutter/material.dart';
import 'package:student/screens/attendance_receipt.dart';

class ConfirmAttendance extends StatelessWidget {
 final  Map eventInfor;
   ConfirmAttendance({Key key,this.eventInfor=null}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEAECEF),
        body: Center(
          child: Container(
            height: 422,
            width: 280,
            decoration: BoxDecoration(
              color: Color(0xFFF9F9FA),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Icon(Icons.school, size: 55),
                ),

                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 10),
                          child: Icon(Icons.account_balance),
                        ),
                      ],
                    ),
                    Text(
                      '${eventInfor.containsKey("name") && eventInfor["name"]!=""?eventInfor["name"]:"unknown"}',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
// Spacer
                SizedBox(height: 15),

// Name
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 10),
                          child: Icon(Icons.person_outline),
                        ),
                      ],
                    ),
                    Text(
                      '${eventInfor.containsKey("lectureName") && eventInfor["lectureName"]!=""?eventInfor["lectureName"]:"unknown"}',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
// Spacer
                SizedBox(height: 15),

// Programe
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 10),
                          child: Icon(Icons.folder_open),
                        ),
                      ],
                    ),
                    Text(
                      'Computer Science.',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
// Spacer
                SizedBox(height: 15),

// Venue
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 10),
                          child: Icon(Icons.domain),
                        ),
                      ],
                    ),
                    Text(
                      'Lecture Hall G5.',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
// Spacer
                SizedBox(height: 15),

// Schedule
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 10),
                          child: Icon(Icons.access_time),
                        ),
                      ],
                    ),
                    Text(
                      '25/03/2020. 12:37pm',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),

                // Spacer
                SizedBox(height: 50),

                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AttendanceReceipt()));
                  },
                  child: Container(
                      height: 49.00,
                      width: 49.00,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff4EC9E9), Color(0xff4197BD)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 40,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
