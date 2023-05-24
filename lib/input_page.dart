import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  usableWidget(),
                  usableWidget(),
                ],
              ),
            ),
            usableWidget(),
            Expanded(
              child: Row(
                children: [
                  usableWidget(),
                  usableWidget(),
                ],
              ),
            ),
          ],
        ));
  }
}

class usableWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF111428),
        ),
      ),
    );
  }
}
