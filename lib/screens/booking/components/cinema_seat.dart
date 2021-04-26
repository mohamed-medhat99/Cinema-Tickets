
import 'package:flutter/material.dart';
import 'package:bookingtickets/services/function.dart';

class CienmaSeat extends StatefulWidget {
  bool isReserved;

  bool isSelected;

  String  seatName;
  CienmaSeat({this.isSelected, this.isReserved , this.seatName});

  @override
  _CienmaSeatState createState() => _CienmaSeatState();
}

class _CienmaSeatState extends State<CienmaSeat> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          !widget.isReserved ? widget.isSelected = !widget.isSelected : null;
          widget.isSelected == true ? addseatnumber(widget.seatName) : null;
//          a.isSelected== true ? addseatnumber(a.seatName): null ;
        })  ;
//        print('the value of isselected = ${widget.isSelected}');
//        print('the value of isReserved = ${widget.isReserved}');
//        print('selected seats = ${widget.seatName.toString()}');
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
          width: MediaQuery.of(context).size.width / 15,
          height: MediaQuery.of(context).size.width / 15,
          decoration: BoxDecoration(
              color: widget.isReserved
                  ? Colors.black
                  : widget.isSelected ? Colors.deepPurple : null,
              border: !widget.isSelected && !widget.isReserved
                  ? Border.all(color: Colors.deepPurple, width: 1.0)
                  : null,
              borderRadius: BorderRadius.circular(5.0))),
    );

  }
}
