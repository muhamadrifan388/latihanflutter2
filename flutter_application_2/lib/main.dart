import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Flutter"),
        ),
        body: Container(
          color: Colors.green,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.white,
              ),
              Container(
                color: Colors.white70,
                width: double.infinity,
                child: Text(
                  "Belajar Flutter - STTBandung",
                  textAlign: TextAlign.center,
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.black,
                      height: 150,
                    )),
                    Expanded(child: Container(color: Colors.yellow)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
