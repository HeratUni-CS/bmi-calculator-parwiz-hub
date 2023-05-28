import 'package:flutter/material.dart';

class usableWidget extends StatelessWidget {
  usableWidget({required this.color, this.icon, this.onPress});
  final Color color;
  final Widget? icon;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: icon,
        ),
      ),
    );
  }
}
