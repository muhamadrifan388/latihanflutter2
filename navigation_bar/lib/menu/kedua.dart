import 'package:flutter/material.dart';
import 'list_latihan.dart';
import 'package:fluttertoast/fluttertoast.dart';

class KeduaPage extends StatefulWidget {
  const KeduaPage({super.key});

  @override
  State<KeduaPage> createState() => _KeduaPageState();
}

class _KeduaPageState extends State<KeduaPage> {
  List<ListLatihan> listlatihan = [
    ListLatihan(id: "1", title: "Judul ke 1", subtitle: "Sub Judul Ke 1"),
    ListLatihan(id: "2", title: "Judul ke 2", subtitle: "Sub Judul Ke 2"),
  ];

  void onClick(getId) {
    Fluttertoast.showToast(
      msg: "Test Id" + getId.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green[700],
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: listlatihan.map((latihan) {
          return Container(
            child: ListTile(
              leading: IconButton(
                  icon: const Icon(
                    Icons.picture_as_pdf,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    null;
                  }),
              title: Text(latihan.title),
              subtitle: Text(latihan.title),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  onClick(latihan.id);
                },
              ),
            ),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            color: Colors.green[100],
          );
        }).toList(),
      ),
    );
  }
}
