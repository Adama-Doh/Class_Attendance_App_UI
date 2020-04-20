import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double height;
  final double width;
  final String label;
  final Icon icon;
  final Function onPressed;

  const GradientButton(
      {Key key, this.label, this.onPressed, this.height, this.width, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container W && H
      height: height,
      width: width,
      // Button
      child: RaisedButton(
        onPressed: onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        // Adding Gradienet
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff4197BD), Color(0xff4EC9E9)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: icon,
                ),
                Text(
                  label,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
