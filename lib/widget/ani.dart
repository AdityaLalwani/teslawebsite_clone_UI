import 'package:flutter/material.dart';

class AnimatedFade extends StatefulWidget {
  final Widget child;

  AnimatedFade({@required this.child});

  @override
  _AnimatedCircularGlowState createState() => _AnimatedCircularGlowState();
}

class _AnimatedCircularGlowState extends State<AnimatedFade>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween<double>(begin: 80, end: 50)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(controller)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: animation.value,
        ),
        widget.child,
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
