import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_abc/ResetPwd.dart';
import 'package:project_abc/SignUp.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'complex-funcs.dart';

class Home extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isHidden=true;
  void _togglePasswordView(){
    setState(() {_isHidden=!_isHidden;});
  }
  TextEditingController usernameController= new TextEditingController();
  TextEditingController pwdController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                  child: IconButton(
                    icon: Icon(
                        Icons.arrow_back),
                    onPressed: () {},
                    alignment: Alignment.topLeft,
                    iconSize: 40,
                  ),
                ),
                SizedBox(height:30),
                Center(
                  child: Text(
                    "Welcome Back",
                    textAlign: TextAlign.justify,
                    style:TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Montserrat-light',
                    ),
                  ),
                ),
                SizedBox(height:30.0),
                Text(
                  "Login",
                  textAlign: TextAlign.left,
                  style:TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    fontFamily: 'Montserrat-light',
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30),
                userentry("Enter your Email/Phone number", "Email/Phone number",Icons.person),
                userentry("Enter your password]", "password",Icons.lock),
                Center(
                  child: GestureDetector(
                    child: Text(
                        "Forgot password?",
                        style:TextStyle(
                          color:Colors.blue,
                          fontFamily: "Montserrat-Light",
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    onTap: (){Get.to(ResetPwd());},
                  ),
                ),
                SizedBox(height:20),
                SizedBox(
                  width:double.infinity,
                  height:50,
                  child: TextButton(
                    child:Text(
                      "Login",
                      // style:TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    onPressed: () {},
                    style:TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                    )
                    // color: Colors.blue,
                    // textColor: Colors.white,

                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Are you a new user? "),
                    GestureDetector(
                        child: Text("Sign up",style: TextStyle(color: Colors.blue)),
                    onTap: (){Get.to(SignUp());}
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/google-circle-avatar.png'),
                      radius: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/twitter-circle-avatar.png'),
                      radius: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/facebook-circle-avatar.png'),
                      radius: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )

    );


  }
}
