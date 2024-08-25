import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String name;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  const CustomText({
    Key? key,
    required this.name,
    required this.size,
    required this.color,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
