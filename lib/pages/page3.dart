import 'package:flutter/material.dart';
import 'package:tesla_clone/home/app_bar.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/3.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(),
          Spacer(),
        ],
      ),
    );
  }
}
