import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      appBar: AppBar(title: Text("Show Alert!")),
      body: Center(
          child: Builder(
        builder: ((context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    showAlert(context);
                  },
                  child: const Text("Show Alert"),
                )
              ],
            )),
      )),
    ));
  }

  void showAlert(BuildContext context) {
    setState(() {
      Widget ButtonOK = MaterialButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );

      Widget ButtonCancel = MaterialButton(
        child: Text("Cancel"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );

      AlertDialog alert = AlertDialog(
        title: Text("WARNING"),
        content: Text("Message"),
        actions: [
          ButtonOK,
          ButtonCancel,
        ],
      );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          });
    });
  }

  void _setState(Null Function() param0) {}
}
