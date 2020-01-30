import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart' ;
import 'package:bmi_calculator/Components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.resultText,
    @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
              ),
            ),
          ),

          Expanded(
            flex:5,
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultsTextStyle,
                  ),

                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),

                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,

                  ),
                ],
              ),
            ),
          ),

          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],

      ),
    );
  }
}
