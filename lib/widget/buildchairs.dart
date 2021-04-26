import 'package:flutter/material.dart';
import 'package:bookingtickets/constants.dart';

class BuildChairs{
  static Widget selectedChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }

  static Widget availableChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.deepPurple),
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }

  static Widget reservedChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}