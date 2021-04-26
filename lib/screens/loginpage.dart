//import 'package:bookingtickets/screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookingtickets/constants.dart';
import 'package:bookingtickets/widget/textfield.dart';
import 'package:bookingtickets/services/auth.dart';
import 'package:bookingtickets/screens/dashboard_screen.dart';
import 'package:bookingtickets/screens/signuppage.dart';




class LoginScreen extends StatefulWidget {
  static String id = 'LogenScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();



  String _email ;

  String _password ;


  final _auth = Auth();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white ,
        body:  Form(
            key: globalKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top : 40.0),
                  child: Container(
                    height: MediaQuery.of (context).size.height*0.3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          child: Text('Booking',
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height*.1,
                ),
                TextFields(icoon: Icons.email, hinttext: 'Enter your Email', OnClick: (value){_email = value ;},),
                SizedBox(
                  height: 20,
                ),

                TextFields(icoon: Icons.vpn_key, hinttext: 'Enter your Password', OnClick: (value){_password = value;}, ),

                SizedBox(
                  height: height*.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:150.0),
                  child: Builder(
                    builder:(context)=> FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      onPressed: (){
                        _validate(context);
                      },
                      color: Colors.deepPurple,
                      child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Dont Have An Account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                      Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: Text('SignUp' ,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height*0.05,
                ),
              ],
            ),
          ),
        );
  }

  void _validate(BuildContext context) async {
    if (globalKey.currentState.validate()) {
      globalKey.currentState.save();
      try{
        await _auth.signin(_email, _password);
        Navigator.pushNamed(context, DashboardScreen.id);
      }catch (e){
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(e.message),
            ));
          }
//        if (_password == adminPassword) {
//          try {
//            await _auth.signin(_email, _password);
//            Navigator.pushNamed(context, AdminHome.id);
//          } catch (e) {
//            Scaffold.of(context).showSnackBar(SnackBar(
//              content: Text(e.message),
//            ));
//          }
//        } else {
//          Scaffold.of(context).showSnackBar(SnackBar(
//            content: Text('Something went wrong !'),
//          ));
//        }

    } else{
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("SomeThing Wrong..."),
      ));
    }
  }

}


