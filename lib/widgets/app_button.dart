import 'package:flutter/material.dart';

class AppRaisedButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  const AppRaisedButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
