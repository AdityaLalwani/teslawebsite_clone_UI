import 'package:flutter/material.dart';

class Hr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 0.6,
        width: 70.0,
        color: Colors.grey,
      ),
    );
  }
}

class Vr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
      child: Container(
        height: 80.0,
        width: .7,
        color: Colors.white,
      ),
    );
  }
}

class Dra extends StatelessWidget {
  String title;
  Dra(String s) {
    title = s;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }
}
