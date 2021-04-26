import 'package:bookingtickets/constants.dart';
import 'package:flutter/material.dart';

import 'package:bookingtickets/model/movies.dart';
List<Movie> getproductbyCategory(Krecommended, List<Movie> allmovies) {
  List<Movie> movies =[];
  try{
    for(var movie in allmovies){
      if(movie.mcategory == Krecommended){
        movies.add(movie);
      }
    }
  }on Error catch(ex){
    print(ex);
  }
  return movies;
}