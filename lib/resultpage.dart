import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusableWidget.dart';
class resultPage extends StatelessWidget {
  

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
            child:Container(
              margin: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
              style: titletext,),

            ),
             ),
             Expanded(
              flex:5 ,
             child: usableWidget(color: activcard,
             icon: Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('NORMAL',style: resulttext,),
                Text('25',style:bmitext ,),
                Text('Your good to go', textAlign: TextAlign.center,
                style: bodytext,),
              ],
             ),),
             ),
        ],
        

      ),
    );
  }
}