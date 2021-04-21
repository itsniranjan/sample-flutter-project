import 'package:flutter/material.dart';

Widget userentry(String titletext, String placeholder, var icon){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon),
          Text("$titletext"),
        ],
      ),
      SizedBox(height:5),
      TextField(
        // controller: usernameController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "$placeholder",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
      SizedBox(height:30),

    ],
  );
}