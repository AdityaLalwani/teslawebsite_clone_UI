import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavigationButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  VoidCallback onTapCallback;

  final bool isEnabled;

  NavigationButton(
      {@required this.icon,
      this.onTapCallback,
      this.isEnabled,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      child: IconButton(
        icon: Icon(
          icon,
          size: 40.0,
          color: color,
        ),
        onPressed: onTapCallback,
      ),
    );
  }
}
