import 'package:flutter/material.dart';
import 'constant.dart';
class lastbutton extends StatelessWidget {
  void Function() onClick;
  String textt;
  lastbutton({required this.onClick, required this.textt});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: 65,
        color: B_color,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            textt,
            style: textbutonstyle,
          ),
        ),
      ),
    );
  }
}
