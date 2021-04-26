//import 'package:bookingtickets/model/movies.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:bookingtickets/services/fire_base.dart';
//import 'package:bookingtickets/constants.dart';
//import 'cinema_seat.dart';
//import 'package:bookingtickets/screens/booking/components/cinema_provider.dart';
//class SeatsRetriver extends StatefulWidget {
//  @override
//  _SeatsRetriverState createState() => _SeatsRetriverState();
//}
//
//class _SeatsRetriverState extends State<SeatsRetriver> {
//  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();
//  final _store = Store();
//  bool seat1 = false;
//  bool seat2 = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.white,
//      body: StreamBuilder<QuerySnapshot>(
//        stream: _store.loadMovies(),
//        builder: (context, snapshot) {
//          if (snapshot.hasData) {
//            List<Movie> movies = [];
//            for (var doc in snapshot.data.documents) {
//              var data = doc.data;
//              movies.add(Movie(
//                documentid: doc.documentID,
//                c1: data[c1],
//                c2: data[c2],
//              ));
//            }
//            return GridView.builder(
//              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                crossAxisCount: 2,
//                childAspectRatio: 0.8,
//              ),
//              itemBuilder: (context, index) =>
//                  Column(
//                    key: _globalkey,
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.only(left: 20.0),
//                        child: Row( // A
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            CienmaSeat(isReserved: seat1,
//                              isSelected: false,
//                            ),
//                            CienmaSeat(isReserved: seat2,
//                              isSelected: false,),
//                            CienmaSeat(isReserved: true,
//                              isSelected: false,),
//                            SizedBox(
//                              width: (MediaQuery
//                                  .of(context)
//                                  .size
//                                  .width / 20) * 2,
//                            ),
//                            CienmaSeat(isReserved: true,
//                              isSelected: false,),
//                            CienmaSeat(isReserved: true,
//                              isSelected: false,),
//                            SizedBox(
//                              width: (MediaQuery
//                                  .of(context)
//                                  .size
//                                  .width / 20),
//                            ),
//                          ],
//                        ),
//                      ),
//                      // Second Row
//                      Row( //B
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20) * 2,
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                        ],
//                      ),
//                      // Third  Row
//                      Row( //c
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20) * 2,
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                        ],
//                      ),
//                      // 4TH Row
//                      Row( //d
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20) * 2,
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                        ],
//                      ),
//                      // 5TH Row
//                      Row( //e
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20) * 2,
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                        ],
//                      ),
//                      // 6TH Row
//                      Row( //f
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,
//
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20) * 2,
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                        ],
//                      ),
//                      // final Row
//                      Row( //g
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20),
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20) * 2,
//                          ),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          CienmaSeat(isReserved: true,
//                            isSelected: false,),
//                          SizedBox(
//                            width: (MediaQuery
//                                .of(context)
//                                .size
//                                .width / 20),
//                          ),
//                        ],
//                      ),
//                      SizedBox(
//                        height: 15,
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Text(
//                            '30\$',
//                            style: TextStyle(
//                                fontSize: 30.0,
//                                fontWeight: FontWeight.bold,
//                                color: Colors.white),
//                          ),
//                          Builder(
//                            builder: (context) =>
//                                Container(
//                                  padding: EdgeInsets.symmetric(
//                                      horizontal: 40.0, vertical: 10.0),
//                                  decoration: BoxDecoration(color: Colors.red,
//                                      borderRadius: BorderRadius.only(
//                                          topLeft: Radius.circular(25.0))),
//                                  child: FlatButton(
//                                    onPressed: () {
//                                      setState(() {
//                                        try {
//                                          if (_globalkey.currentState
//                                              .validate()) {
//                                            _globalkey.currentState.save();
//                                            _store.updateseats((
//                                                {
//                                                  c1: seat1,
//                                                  c2: seat2,
//                                                }
//                                            ), movies.documenti);
//                                          }
//                                        } catch (es) {
//                                          print(es);
//                                        }
//                                      });
//                                    },
//                                    child: Text('buy',
//                                      style: TextStyle(
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 30,
//                                          color: Colors.white
//                                      ),),),
//                                ),
//                          )
//                        ],
//                      ),
//                    ],
//                  ),
//
//              itemCount: movies.length,
//            );
//          } else {
//            return Center(child: Text('Loading...'));
//          }
//        },
//      ),
//    );
//  }
//}
//
//
//
