import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight=70.0;
const activeCardColor=Color(0xff161B22);
const inactiveCardColor=Color(0xff070A10);   
const bottomContainerColor=Color(0xFFEB1555 );


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor=activeCardColor;      // ACTIVE means deseleceted   and INACTIVE means selected
  Color femaleCardColor=activeCardColor;

  void updateColor(int gender)   //1: male  , 2: female
  {
    if(gender==1)
    {
      if(maleCardColor==activeCardColor)
      {
        maleCardColor=inactiveCardColor;
        // if(femaleCardColor==inactiveCardColor)  
          femaleCardColor=activeCardColor;
      }
      else 
        maleCardColor=activeCardColor;
    }
    else if(gender==2)
    {
      if(femaleCardColor==activeCardColor)
      {
        femaleCardColor=inactiveCardColor;
        // if(maleCardColor==inactiveCardColor)  
          maleCardColor=activeCardColor;
      } 
      else 
        femaleCardColor=activeCardColor;
    }
  }
  
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
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                       updateColor(1); 
                      });
                    },
                    child: ReusableCard(
                    colour:maleCardColor,
                    cardChild: IconContent(label: "MALE",iconName: FontAwesomeIcons.mars,),
                ),
                  )),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                       updateColor(2); 
                      });
                    },
                    child: ReusableCard(
                    colour:femaleCardColor,
                    cardChild: IconContent(label: "FEMALE",iconName: FontAwesomeIcons.venus,),
                  ),
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


