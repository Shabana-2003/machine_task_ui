import 'package:flutter/material.dart';

class UnderlinedTextButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final Color underlineColor;
  final FontWeight fontWeight;
  final VoidCallback onPressed;

  const UnderlinedTextButton({
    super.key,
    required this.text,
    required this.fontSize,
    required this.textColor,
    required this.underlineColor,
    required this.fontWeight,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: underlineColor,
              width: 1.0,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
