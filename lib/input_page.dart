import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

// const activeCardColor=Color(0xff161B22);
// const inactiveCardColor=Color(0xff070A10); 

const bottomContainerHeight=70.0;
const activeCardColor=Color(0xff070A10);
const inactiveCardColor= Color(0xff161B22);  
const bottomContainerColor=Color(0xFFEB1555 );

enum Gender{
  male,female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // ACTIVE means seleceted   and INACTIVE means deselected
  // Color maleCardColor=inactiveCardColor;      
  // Color femaleCardColor=inactiveCardColor;

  Gender selectedGender;

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
                  child: ReusableCard(
                    onPressed: (){
                      setState(() {
                        // selectedGender=Gender.male;
                        selectedGender==Gender.male ? selectedGender=null : selectedGender=Gender.male;
                      });
                    },
                    colour:selectedGender==Gender.male ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(label: "MALE",iconName: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    onPressed: (){
                      setState(() {
                        // selectedGender=Gender.male;
                        selectedGender==Gender.female ? selectedGender=null : selectedGender=Gender.female;
                      });
                    },
                    colour:selectedGender==Gender.female ? activeCardColor: inactiveCardColor,
                    cardChild: IconContent(label: "FEMALE",iconName: FontAwesomeIcons.venus,
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




// setState(() {
//                         // selectedGender=Gender.male;
//                         selectedGender==Gender.male ? selectedGender=null : selectedGender=Gender.male;
//                       });