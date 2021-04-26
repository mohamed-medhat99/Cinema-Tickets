import 'package:bookingtickets/screens/loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bookingtickets/model/movies.dart';
import 'package:bookingtickets/widget/moviesview.dart';
import 'package:bookingtickets/services/fire_base.dart';
import 'package:bookingtickets/constants.dart';
import 'package:bookingtickets/widget/movieCintainerView.dart';

class DashboardScreen extends StatefulWidget {
  static String id = 'DashBoard';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}
class _DashboardScreenState extends State<DashboardScreen> {
  final _store = Store();
  List<Movie> _movies;


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:Center( child: Text('Movies App',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },
            icon: Icon(
              Icons.exit_to_app,
            ),
          ),
        ],

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      child : SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FlatButton(
                    child: Text('View All'),
                    onPressed: () {},
                  ),
                ],
              ),
                Container(
                  height: 300,
                  width: double.infinity,
                  child: movieHorizontalView(Krecommended, _movies),
                ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best of 2019',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FlatButton(
                    child: Text('View All'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 230,
              width: double.infinity,
              child: movieContainerView(Kbestof, _movies),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Top Rated Movies',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FlatButton(
                    child: Text('View All'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: movieHorizontalView(Ktoprated, _movies),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
