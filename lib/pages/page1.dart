import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tesla_clone/home/app_bar.dart';
import 'package:tesla_clone/home/hr.dart';
//import 'package:tesla_clone/widget/ani.dart';
import 'package:tesla_clone/widget/animation.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"), fit: BoxFit.cover)),
      child: Column(
        children: [
          CustomAppBar(),
          AnimatedCircularGlow(
            child: Text(
              "Solar Roof",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
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
                    height: 153,
                  ),
                  InkWell(
                    onTap: () {
                      Page1();
                    },
                    child: Text(
                      "SOLAR ROOF",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 225,
          ),
          Text(
            "Premium tile with solar power for your home",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Text(
                    "Sol",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Beautiful Solar",
                    style: TextStyle(color: Colors.white, fontSize: 13.5),
                  ),
                  Text(
                    "No Compromise",
                    style: TextStyle(color: Colors.white, fontSize: 13.5),
                  ),
                ],
              ),
              Vr(),
              Column(
                children: [
                  Text(
                    "3X",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  Text(
                    "Stronger Than",
                    style: TextStyle(color: Colors.white, fontSize: 13.5),
                  ),
                  Text(
                    "Standard Roofing Tiles",
                    style: TextStyle(color: Colors.white, fontSize: 13.5),
                  ),
                ],
              ),
              Vr(),
              Column(
                children: [
                  Text(
                    "24/7",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  Text(
                    "Energy Monitoring",
                    style: TextStyle(color: Colors.white, fontSize: 13.5),
                  ),
                ],
              ),
              SizedBox(
                width: 45,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white, width: 3.5)),
                onPressed: () {},
                color: Colors.transparent,
                textColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("     ORDER NOW     ".toUpperCase(),
                      style: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
