import 'package:bmi_starting/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconData.dart';
import 'reusableWidget.dart';
import 'constant.dart';
import 'mybutton.dart';
import 'resultpage.dart';
import 'lastButton.dart';
import 'bmicalculator.dart';

enum gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int hieght = 100;
  int weight = 67;
  int age = 25;
  @override
  gender? selectgender;

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
                usableWidget(
                  onPress: () {
                    setState(() {
                      selectgender = gender.Male;
                    });
                  },
                  color: (selectgender == gender.Male) ? activcard : firstColor,
                  icon: iconPart(
                    useIcon: FontAwesomeIcons.mars,
                    Lable: 'MALE',
                  ),
                ),
                usableWidget(
                  onPress: () {
                    setState(() {
                      selectgender = gender.Female;
                    });
                  },
                  color:
                      (selectgender == gender.Female) ? activcard : firstColor,
                  icon: iconPart(
                      useIcon: FontAwesomeIcons.venus, Lable: 'FEMALE'),
                ),
              ],
            ),
          ),
          usableWidget(
            color: firstColor,
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: textstyl,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      hieght.toString(),
                      style: Nstyle,
                    ),
                    Text(
                      'cm',
                      style: textstyl,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 1,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color.fromARGB(255, 102, 110, 106),
                    thumbColor: Color(0xFFEB1557),
                  ),
                  child: Slider(
                    value: hieght.toDouble(),
                    min: 50,
                    max: 250,
                    onChanged: (double value) {
                      setState(() {
                        hieght = value.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                usableWidget(
                  color: firstColor,
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: textstyl,
                      ),
                      Text(
                        weight.toString(),
                        style: Nstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          mybutton(
                            myicon: Icons.add,
                            onClick: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          mybutton(
                            myicon: Icons.remove,
                            onClick: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                usableWidget(
                  color: firstColor,
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: textstyl,
                      ),
                      Text(
                        age.toString(),
                        style: Nstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          mybutton(
                            myicon: Icons.add,
                            onClick: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          mybutton(
                            myicon: Icons.remove,
                            onClick: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          lastbutton(
            onClick: () {
              BmiCalculate bmiCalculate = BmiCalculate(
                height: height,
                weight: weight,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return resultPage(
                      result: bmiCalculate.getResult(),
                      BMI: bmiCalculate.getbmi(),
                      interprate: bmiCalculate.getInterprate(),
                    );
                  },
                ),
              );
            },
            textt: 'CALCULAT YOUR BMI',
          ),
        ],
      ),
    );
  }
}
