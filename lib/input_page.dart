import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconData.dart';
import 'reusableWidget.dart';

const B_color = Color(0xFFEB1557);
const firstColor = Color(0xFF111428);
const activcard = Color(0xFF191935);

enum gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          ),
          Expanded(
            child: Row(
              children: [
                usableWidget(
                  color: firstColor,
                ),
                usableWidget(
                  color: firstColor,
                ),
              ],
            ),
          ),
          Container(
            height: 65,
            color: B_color,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
