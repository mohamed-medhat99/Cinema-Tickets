import 'package:flutter/material.dart';
import 'package:bookingtickets/constants.dart';

class LocationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.location_on,color: Colors.black,size: 30,),
          SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('City Stars',style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),),
              Text('NasrCity, Cairo, Egypt',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16.0,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
