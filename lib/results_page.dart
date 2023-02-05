import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more!',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  BottomButton(
                      onPress: () {
                        Navigator.pop(context);
                      },
                      buttonTitle: 'Re-Calculate'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
