import 'package:flutter/material.dart';
import 'constant.dart';
class mybutton extends StatelessWidget {
  final void Function() onClick;
  final IconData myicon;
  mybutton({required this.myicon, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      fillColor: filcolor,
      shape: const CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      child: Icon(myicon),
    );
  }
}