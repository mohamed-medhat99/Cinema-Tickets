import 'package:flutter/material.dart';

class Roundedbuttons extends StatelessWidget {
  const Roundedbuttons({@required this.coluer , @required this.title , @ required this.onPressed , });
  final Color coluer;
  final String title;
  final Function onPressed ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Material(
        elevation: 5.0,
        color: coluer,

        borderRadius: BorderRadius.circular(20.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 60.0,

          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}