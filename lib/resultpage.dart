import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusableWidget.dart';
import 'lastButton.dart';

class resultPage extends StatelessWidget {
  String result;
  String BMI;
  String interprate;
  resultPage({required this.result, required this.BMI,required this.interprate});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titletext,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: usableWidget(
              color: activcard,
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: resulttext,
                  ),
                  Text(
                    BMI,
                    style: bmitext,
                  ),
                  Text(
                    interprate,
                    textAlign: TextAlign.center,
                    style: bodytext,
                  ),
                ],
              ),
            ),
          ),
          lastbutton(
              onClick: () {
                Navigator.pop(context);
              },
              textt: 'RECALCULATE')
        ],
      ),
    );
  }
}
