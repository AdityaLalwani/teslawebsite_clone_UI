import 'package:flutter/material.dart';

class AnimatedCircularGlow extends StatefulWidget {
  final Widget child;

  AnimatedCircularGlow({@required this.child});

  @override
  _AnimatedCircularGlowState createState() => _AnimatedCircularGlowState();
}

class _AnimatedCircularGlowState extends State<AnimatedCircularGlow>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 30, end: 0)
        .chain(CurveTween(curve: Curves.ease))
        .animate(controller)
          ..addListener(() {
            setState(() {});
          });

    controller.forward();
    if (controller.isCompleted) {
      dispose();
    }
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
