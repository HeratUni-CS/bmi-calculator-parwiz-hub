import 'package:flutter/material.dart';
class iconPart extends StatelessWidget {
  final IconData useIcon;
  final String Lable;
  iconPart({required this.useIcon, required this.Lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          useIcon,
          size: 66,
          color: Color(0xFF868892),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Lable,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF868892),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}