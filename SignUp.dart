import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_abc/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'complex-funcs.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isHidden=true;
  void _togglePasswordView(){
    setState(() {_isHidden=!_isHidden;});
  }
  TextEditingController usernameController= new TextEditingController();
  TextEditingController pwdController= new TextEditingController();
  TextEditingController emailController= new TextEditingController();
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
                    onPressed: () {Get.to(Home());},
                    alignment: Alignment.topLeft,
                    iconSize: 40,
                  ),
                ),
                SizedBox(height:30),
                Center(
                  child: Text(
                    "Create Account",
                    textAlign: TextAlign.justify,
                    style:TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-light',
                    ),
                  ),
                ),
                SizedBox(height:30.0),
                Text(
                  "Sign Up",
                  textAlign: TextAlign.left,
                  style:TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    fontFamily: 'Montserrat-light',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                userentry("Enter your Full Name", "Full Name",Icons.person),
                userentry("Enter your Email", "Your email",Icons.email_outlined),
                userentry("Enter your password", "Password",Icons.lock),
                SizedBox(
                  width:double.infinity,
                  height:50,
                  child: TextButton(
                      child:Text(
                        "Sign Up",
                        // style:TextStyle(fontSize: 20,color: Colors.white),
                      ),
                      onPressed: () {},
                      style:TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                      )

                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a user? "),
                    GestureDetector(
                        child: Text("Login",style: TextStyle(color: Colors.blue)),
                        onTap: (){Get.to(Home());}
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
