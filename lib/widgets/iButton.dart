import 'package:flutter/material.dart';

class Ibutton extends StatelessWidget {
  const Ibutton({
    Key? key,
    required this.icon,
    this.splashRadius: 20,
    required this.onClick,
  }) : super(key: key);
  final IconData icon;
  final double? splashRadius;
  final Function() onClick;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      onPressed: onClick,
      icon: Icon(icon, color: Colors.white),
    );
  }
}
