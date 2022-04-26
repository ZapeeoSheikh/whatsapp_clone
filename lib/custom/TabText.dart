import 'package:flutter/material.dart';

class TabText extends StatelessWidget {
  String title;
  double? size;
  Color? color;
  TabText(this.title, {this.color = Colors.white38, this.size = 20});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
