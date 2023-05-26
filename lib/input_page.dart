import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const B_color = Color(0xFFEB1557);
const E_color = Color(0xFF111428);

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
                usableWidget(
                  color: E_color,
                  icon: iconPart(
                    useIcon: FontAwesomeIcons.mars,
                    Lable: 'MALE',
                  ),
                ),
                usableWidget(
                  color: E_color,
                  icon: iconPart(
                      useIcon: FontAwesomeIcons.venus, Lable: 'FEMALE'),
                ),
              ],
            ),
          ),
          usableWidget(
            color: E_color,
          ),
          Expanded(
            child: Row(
              children: [
                usableWidget(
                  color: E_color,
                ),
                usableWidget(
                  color: E_color,
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

class usableWidget extends StatelessWidget {
  usableWidget({required this.color, this.icon});
  final Color color;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: icon,
      ),
    );
  }
}
