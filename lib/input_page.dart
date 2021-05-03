import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

// const kActiveCardColor=Color(0xff161B22);
// const kInactiveCardColor=Color(0xff070A10); 



enum Gender{
  male,female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // ACTIVE means seleceted   and INACTIVE means deselected
  // Color maleCardColor=kInactiveCardColor;      
  // Color femaleCardColor=kInactiveCardColor;

  Gender selectedGender;
  int height=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    colour:selectedGender==Gender.male ? kActiveCardColor : kInactiveCardColor,
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
                    colour:selectedGender==Gender.female ? kActiveCardColor: kInactiveCardColor,
                    cardChild: IconContent(label: "FEMALE",iconName: FontAwesomeIcons.venus,
                  ),
                  )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour:kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '124',
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style:kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 180.0,
                    activeColor: kBottomContainerColor,
                    // activeColor: Color(0xffEB1555),
                    // inactiveColor: Color(0xff8D8E98),
                    onChanged: (double newValue){
                      setState(() {
                       height=newValue.round(); 
                      });
                    },

                  )
                ],
              ),
            )
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(
                  colour:kActiveCardColor,
                )),
                Expanded(child: ReusableCard(
                  colour:kActiveCardColor,
                )),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            width: double.infinity,
            color: kBottomContainerColor,
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