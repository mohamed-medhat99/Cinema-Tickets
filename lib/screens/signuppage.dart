import 'package:bookingtickets/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:bookingtickets/constants.dart';
import 'package:bookingtickets/widget/textfield.dart';
import 'package:bookingtickets/services/auth.dart';
import 'package:flutter/services.dart';
import 'package:bookingtickets/screens/dashboard_screen.dart';

class SignUpScreen extends StatefulWidget {

  static String id = 'SignupScreen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState>  _globalkey=GlobalKey<FormState>();

  bool showspinner = false;

  String _email ;

  String _password;

  final _auth = Auth();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white ,
        body: Form(
            key: _globalkey,
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
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                              color: Colors.deepPurple
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
                TextFields(

                  icoon: Icons.face,
                  hinttext: 'Enter your Name',

                ),
                SizedBox(
                  height: height*.02,
                ),
                TextFields(OnClick: (value){_email = value;}, icoon: Icons.email, hinttext: 'Enter your Email', ),
                SizedBox(
                  height: height*.02,
                ),
                TextFields(OnClick: (value){_password = value;}, icoon: Icons.vpn_key, hinttext: 'Enter your Password',),

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
                      onPressed: () async {
                        if (_globalkey.currentState.validate())
                        {

                          try {
                            _globalkey.currentState.save();
                            final authresult = await _auth.signup(
                                _email.trim(), _password.trim());
                            Navigator.pushNamed(context, DashboardScreen.id);
                          }
                          on PlatformException catch(e){
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(
                                e.message,
                              ),
                            ));
                          }
                        }

                      },
                      color: Colors.deepPurple,
                      child: Text('SignUp',
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
                    Text('Already Have An Account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        child: Text('SignIn' ,
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
    );
  }
}
