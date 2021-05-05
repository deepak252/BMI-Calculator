import 'package:flutter/material.dart';
import 'package:myapp/calculator_brain.dart';
import 'package:myapp/components/bottom_Button.dart';

import 'package:myapp/constants.dart';

import 'package:myapp/components/reusable_card.dart';


class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiStatus;
  final String bmiInterpretation;
  ResultPage({@required this.bmiResult,@required this.bmiStatus,@required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'BMI Result'),
    
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex:1,            
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            )
          ),
          Expanded(
            flex:6,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    bmiStatus.toUpperCase(),
                    style:kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,                  
                  ),
                  Text(
                    bmiInterpretation,
                    style: kBodyTextStyle,
                  )
                ],
              )
            ),
          ),
          BottomButton(
            btnTitle: 'RECALCULATE BMI',
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      )
    );
  }
}