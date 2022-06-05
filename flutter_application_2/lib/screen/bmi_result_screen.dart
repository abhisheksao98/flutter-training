import 'package:flutter/material.dart';
import 'package:flutter_application_2/style_const/utilisconstrant.dart';
import 'package:flutter_application_2/widgets/bottom_button.dart';
import 'package:flutter_application_2/widgets/card_control.dart';

class BMIresult extends StatelessWidget {
  final String bmi;
  final String bmiresult;
  final String bmiNarration;
  const BMIresult(
      {Key? key,
      required this.bmi,
      required this.bmiresult,
      required this.bmiNarration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.hdr_plus),
        title: const Text('BMI calculator'),
        backgroundColor: kbackGroundColor,
      ),
      body: Container(
        color: kbackGroundColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Text('Your Result', style: klabelText),
                ),
              ),
              Expanded(
                flex: 5,
                child: cardcontrol(
                    bgcolor: kCardActiveBackground,
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          bmiresult,
                          style: kLargeText,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          bmi,
                          style: knumberText,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Normal BMI Range',
                          style: kLargeText,
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          '18.5-24.9',
                          style: klabelText,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          bmiNarration,
                          style: klabelText,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    onPress: () => {}),
              ),
              Expanded(
                child: Bottombutton(
                    buttonText: 'Re-Calculate Your BMI',
                    ontap: () {
                      Navigator.pop(context);
                    }),
              ),
            ]),
      ),
    );
  }
}
