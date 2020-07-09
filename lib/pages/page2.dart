import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:tesla_clone/home/app_bar.dart';
import 'package:tesla_clone/widget/animation.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool _visible = true;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Timer(
        Duration(milliseconds: 1500),
        () => setState(() {
              _visible = !_visible;
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "   T   E   S   L   A",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ),
                AnimatedCircularGlow(
                  child: Container(),
                ),
                Text(
                  "    Design",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "  Function and Form          ",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  "     Solar Roof replaces your existing roof and\n     brings it to life with beautiful solar tiles that\n     can power your home for decades with the\n     energy you produce.",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                AnimatedOpacity(
                  duration: Duration(seconds: 2),
                  opacity: _visible ? 1.0 : 0.0,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 118,
                        ),
                        InkWell(
                          child: Text(
                            "DESIGN",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black, width: 3.5)),
                      onPressed: () {},
                      color: Colors.transparent,
                      textColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("      ORDER NOW      ".toUpperCase(),
                            style: TextStyle(fontSize: 12)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: ClipRRect(
              child: Image.asset(
                "assets/images/2.png",
                height: MediaQuery.of(context).size.height,
                width: 1180,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
