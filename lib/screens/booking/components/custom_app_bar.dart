import 'package:flutter/material.dart';
import 'package:bookingtickets/constants.dart';
import 'package:bookingtickets/model/movies.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class CustomAppBar extends StatefulWidget {


  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
Movie movie= ModalRoute.of(context).settings.arguments;
    return Expanded(
      flex: 15,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: appPadding / 2),
        child: Container(
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                 movie.mName,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Positioned(
                left: 24,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                        Icons.arrow_back,
                        color: Colors.deepPurple,
                      ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
