import 'package:bookingtickets/model/movies.dart';
import 'package:bookingtickets/screens/movie_details_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookingtickets/functions.dart';
import 'package:bookingtickets/services/fire_base.dart';
import '../constants.dart';

Widget movieHorizontalView( String pCategory , List<Movie> allmovies) {

  List<Movie> _movies;
  final _store = Store();
  return StreamBuilder<QuerySnapshot>(
    stream: _store.loadMovies(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        List<Movie> movies = [];
        for (var doc in snapshot.data.documents) {
          var data = doc.data;
          movies.add(Movie(
            documentid: doc.documentID,
              mName: data[KmovieName],
              mtime: data[Kmovietime],
              mcategory: data[Kmoviecategory],
              mDescription: data[KmovieDescription],
              murl: data[Kmovieimage],
              myear: data[Kmovieyear],
             mrating: data[Kmovierating],
            c1: data[Kc1],
            c2: data[Kc2],
            c3: data[Kc3],
            c4: data[Kc4],
            c5: data[Kc5],
            c6: data[Kc6],
            c7: data[Kc7],
            c8: data[Kc8],
            c9: data[Kc9],
            c10: data[Kc10],
            c11: data[Kc11],
            c12: data[Kc12],
            c13: data[Kc13],
            c14: data[Kc14],
            c15: data[Kc15],
            c16: data[Kc16],
            c17: data[Kc17],
            c18: data[Kc18],
            c19: data[Kc19],
            c20: data[Kc20],
            c21: data[Kc21],
            c22: data[Kc22],
            c23: data[Kc23],
            c24: data[Kc24],
            c25: data[Kc25],
            c26: data[Kc26],
            c27: data[Kc27],
            c28: data[Kc28],
            c29: data[Kc29],
            c30: data[Kc30],
            c31: data[Kc31],
            c32: data[Kc32],
            c33: data[Kc33],
            c34: data[Kc34],
            c35: data[Kc35],
            c36: data[Kc36],
            c37: data[Kc37],
            c38: data[Kc38],
            c39: data[Kc39],
            c40: data[Kc40],
            c41: data[Kc41],
            c42: data[Kc42],
            c43: data[Kc43],
            c44: data[Kc44],
            c45: data[Kc45],
            c46: data[Kc46],
            c47: data[Kc47],
          ));
        }
        _movies = [...movies];
        movies.clear();
        movies = getproductbyCategory(pCategory ,_movies);
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, MovieDetailsScreen.id , arguments: movies[index]);
            },
              child : Container(
                child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        movies[index].murl
                    ),
                  ),

              ),
          ),


          itemCount: movies.length,
        );
      } else {
        return Center(child: Text('Loading...'));
      }
    },
  );
}
