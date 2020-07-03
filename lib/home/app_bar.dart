import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(46),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text(
                    "T   E   S   L   A",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 350.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "MODEL S",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "MODEL 3",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "MODEL X",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "MODEL Y",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "SOLAR ROOF",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "SOLAR PANELS",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 260.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "SHOP",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: Icon(
                      Icons.dehaze,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
