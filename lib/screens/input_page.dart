import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/calculator_brain.dart';
import 'package:myapp/components/bottom_Button.dart';
import 'package:myapp/screens/result.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/components/icon_content.dart';
import 'package:myapp/components/reusable_card.dart';

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
  int height=150;
  int weight=50;
  int age=18;

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
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style:kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                      overlayColor: Color(0x29EB1555),
                      thumbColor: kBottomContainerColor,
                      activeTrackColor: Colors.white,
                    ) ,
                    child:Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 180.0,
                      // activeColor: kBottomContainerColor,
                      // activeColor: Color(0xffEB1555),
                      // inactiveColor: Color(0xff8D8E98),
                      onChanged: (double newValue){
                        setState(() {
                        height=newValue.round(); 
                        });
                      },
                    ) ,
                  )
                  
                ],
              ),
            )
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'kg',
                            style: kLabelTextStyle,
                          )
                        ],                                              
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                               weight--; 
                              });
                            },
                          ),
                          SizedBox(width: 12,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                               weight++; 
                              });
                            },
                          ),                       
                        ],
                      )
                      
                                            
                    ],
                  ),
                  colour:kActiveCardColor,
                )),
                Expanded(child: ReusableCard(
                  colour:kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kLabelTextStyle,                        
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'yr',
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                               age--; 
                              });
                            },
                          ),
                          SizedBox(width: 12,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                               age++; 
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
            btnTitle: 'CALCULATE',
            onTap:(){
              CalculatorBrain calcBMI=CalculatorBrain(height: height,weight: weight);
                       
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>ResultPage(
                      bmiResult: calcBMI.getResult(),
                      bmiStatus: calcBMI.getStatus(),
                      bmiInterpretation: calcBMI.getInterpretation(),
                    )
                  )
                );
            },
          )

        ],
      )

    );
  }
}



class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon,@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56,height: 56),
      elevation: 6.0,
      child: Icon(icon),
    );
  }
}


