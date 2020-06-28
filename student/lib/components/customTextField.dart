import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final Icon prefixIcon;
  final TextEditingController textEditingController;

  const CustomTextField({Key key, this.obscureText, this.prefixIcon,this.textEditingController = null}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      style: TextStyle(fontSize: 18, color: Colors.black),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(18),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(19)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(19)),
          // prefixIcon: Icon(Icons.lock, color: Color(0xFFB0C8E2))
          prefixIcon: prefixIcon
        ),
    );
  }
}
