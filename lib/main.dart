import 'package:flutter/material.dart';
import 'package:bookingtickets/screens/dashboard_screen.dart';
import 'package:bookingtickets/screens/movie_details_screen.dart';
import 'package:bookingtickets/screens/booking/booking_screen.dart';
import 'package:bookingtickets/screens/loginpage.dart';
import 'package:bookingtickets/screens/signuppage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,

        routes: {
          SignUpScreen.id:(context)=>SignUpScreen(),
          LoginScreen.id:(context)=>LoginScreen(),
          DashboardScreen.id : (context)=>DashboardScreen(),
          MovieDetailsScreen.id :(context)=>MovieDetailsScreen(),
          BookingScreen.id : (context)=>BookingScreen(),
//          SeatSelectorWidget.id:(context)=>SeatSelectorWidget(),
        },
      );

  }
}
//theme: ThemeData(
//primarySwatch: Colors.indigo,
//scaffoldBackgroundColor: Colors.white,
//),
//DashboardScreen.id : (context)=>DashboardScreen(),
//MovieDetailsScreen.id :(context)=>MovieDetailsScreen(),