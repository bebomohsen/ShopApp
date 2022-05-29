import 'package:flutter/material.dart';

class IconButtonWithBackground extends StatelessWidget {
  const IconButtonWithBackground(
      {Key? key, required this.icon, required this.color, required this.size})
      : super(key: key);
  final IconData icon;
  final Color color;

  final double size;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
        child: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
