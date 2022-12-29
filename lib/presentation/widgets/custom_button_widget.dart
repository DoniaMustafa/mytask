import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({
    Key? key,
    required this.txt,
    required this.color,
    required this.onPress,
    required this.style,
  }) : super(key: key);
  final Color color;
  final String txt;
  final VoidCallback onPress;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: color),
      child: MaterialButton(
        elevation: 3.0,
        onPressed: onPress,
        child: Text(
          txt,
          style: style,
        ),
      ),
    );
  }
}
