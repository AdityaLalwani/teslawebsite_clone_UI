import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spring_button/spring_button.dart';
import 'package:tesla_clone/home/hr.dart';
import 'package:tesla_clone/pages/page1.dart';
import 'package:tesla_clone/pages/page2.dart';
import 'package:tesla_clone/pages/page3.dart';
import 'package:tesla_clone/pages/page4.dart';
import 'package:tesla_clone/pages/page5.dart';
import 'package:tesla_clone/pages/page6.dart';
import 'package:tesla_clone/pages/page7.dart';
import 'package:tesla_clone/widget/navigation_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView(children: [
                Container(
                  margin: EdgeInsets.all(15.0),
                  alignment: Alignment.topRight,
                  height: 60,
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    NavigationButton(
                      icon: Icons.close,
                      color: Colors.black,
                    ),
                    onTapDown: (_) {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Dra("    Existing Inventory"),
                Hr(),
                Dra('    Used Inventory'),
                Hr(),
                Dra("    Test Drive"),
                Hr(),
                Dra('    Find Us'),
                Hr(),
                Dra("    Support"),
                Hr(),
                Dra('    Get Newsletter'),
                Hr(),
                Dra("    News"),
                Hr(),
                Dra('    Energy'),
                Hr(),
                Dra('    Commercial Solar'),
                Hr(),
                Dra("    Cybertruck"),
                Hr(),
                Dra('    Semi'),
                Hr(),
                Dra("    Charging"),
                Hr(),
                Dra('    Energy'),
                Hr(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/india.jpg"),
                  ),
                  title: Text("  INDIA"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ]),
            ),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Page1(),
                Page2(),
                Page3(),
                Page4(),
                Page5(),
                Page6(),
                Page7(),
              ],
              controller: controller,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 20),
              child: TabsController(controller),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(bottom: 10),
              child: TabsController1(controller),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10.0),
              child: RotatedBox(
                quarterTurns: -1,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 7,
                  effect: ScrollingDotsEffect(
                    strokeWidth: 1,
                    activeStrokeWidth: 10,
                    activeDotScale: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.white,
                    maxVisibleDots: 7,
                    radius: 0,
                    dotHeight: 1.5,
                    dotWidth: 20,
                    spacing: 10,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabsController extends StatefulWidget {
  final PageController controller;

  TabsController(this.controller);

  @override
  TabsControllerState createState() {
    return TabsControllerState();
  }
}

class TabsControllerState extends State<TabsController> {
  bool isDownButtonActive = false;

  @override
  void initState() {
    super.initState();

    isDownButtonActive = false;
    widget.controller.addListener(() {
      if (widget.controller.page == 0) {
        setState(() {
          isDownButtonActive = false;
        });
      } else if (widget.controller.page == 3) {
        setState(() {
          isDownButtonActive = false;
        });
      } else {
        setState(() {
          isDownButtonActive = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SpringButton(
              SpringButtonType.OnlyScale,
              NavigationButton(
                icon: Icons.keyboard_arrow_down,
                isEnabled: isDownButtonActive,
              ),
              onTapDown: (_) {
                onDownPress();
              },
            ),
          ],
        ),
      ),
    );
  }

  void onDownPress() {
    widget.controller.nextPage(
        duration: Duration(milliseconds: 800), curve: Curves.fastOutSlowIn);
  }

  void onUpPress() {
    widget.controller.previousPage(
        duration: Duration(milliseconds: 800), curve: Curves.fastOutSlowIn);
  }
}

class TabsController1 extends StatefulWidget {
  final PageController controller;

  TabsController1(this.controller);

  @override
  TabsController1State createState() {
    return TabsController1State();
  }
}

class TabsController1State extends State<TabsController1> {
  bool isUpButtonActive = false;

  @override
  void initState() {
    super.initState();

    isUpButtonActive = false;
    widget.controller.addListener(() {
      if (widget.controller.page == 0) {
        setState(() {
          isUpButtonActive = true;
        });
      } else if (widget.controller.page == 3) {
        setState(() {
          isUpButtonActive = false;
        });
      } else {
        setState(() {
          isUpButtonActive = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SpringButton(
              SpringButtonType.OnlyScale,
              NavigationButton(
                icon: Icons.keyboard_arrow_up,
                isEnabled: isUpButtonActive,
                onTapCallback: () {},
              ),
              onTapDown: (_) {
                onUpPress();
              },
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  void onDownPress() {
    widget.controller.nextPage(
        duration: Duration(milliseconds: 800), curve: Curves.fastOutSlowIn);
  }

  void onUpPress() {
    widget.controller.previousPage(
        duration: Duration(milliseconds: 800), curve: Curves.fastOutSlowIn);
  }
}

class Springbutton extends StatelessWidget {
  final Function onPress;
  final String text;
  final double height;
  final double width;
  Springbutton(
      {this.onPress, this.text = "Next >", this.height: 40, this.width: 80});
  @override
  Widget build(BuildContext context) {
    return SpringButton(
      SpringButtonType.OnlyScale,
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 13.0,
              color: Colors.black.withOpacity(.5),
              offset: Offset(6.0, 7.0),
            ),
          ],
          //shape: BoxShape.rectangle,
          //border: Border.all(),
          color: Colors.redAccent,
        ),
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      onTapDown: (_) {
        onPress();
      },
    );
  }
}
