import 'package:flutter/material.dart';
import './screens/login.dart';
import 'screens/scan_session_code.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaningPage(),
    );
  }
}
