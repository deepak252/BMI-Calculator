import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight=70.0;
const activeCardColor=Color(0xff161B22);
const bottomContainerColor=Color(0xFFEB1555  );
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),      
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(
                  colour:activeCardColor,
                  cardChild: IconContent(label: "MALE",iconName: FontAwesomeIcons.mars,),
                )),
                Expanded(child: ReusableCard(
                  colour:activeCardColor,
                  cardChild: IconContent(label: "FEMALE",iconName: FontAwesomeIcons.venus,),
                )),
              ],
            ),
          ),
          Expanded(child: ReusableCard(
                  colour:activeCardColor,
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(
                  colour:activeCardColor,
                )),
                Expanded(child: ReusableCard(
                  colour:activeCardColor,
                )),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 12),
          )

        ],
      )

    );
  }
}


