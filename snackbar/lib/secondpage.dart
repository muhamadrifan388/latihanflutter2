import 'package:flutter/material.dart';
import 'package:snackbar/secondpage.dart';

class secondpage extends StatelessWidget {
  // const SecondPage({ key? key }) : super(Key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.deepOrange,
            child: Text(
              "Kembali",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      )),
    );
  }
}
