import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/bmi_result_screen.dart';
import 'package:flutter_application_2/service/claculate_BMI_service.dart';
import 'package:flutter_application_2/style_const/utilisconstrant.dart';
import 'package:flutter_application_2/widgets/bottom_button.dart';
import 'package:flutter_application_2/widgets/card_control.dart';
import 'package:flutter_application_2/widgets/icon_widget.dart';
import 'package:flutter_application_2/widgets/rounded_con_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum GenderType { male, female }

class BMIInputPage extends StatefulWidget {
  const BMIInputPage({Key? key}) : super(key: key);

  @override
  State<BMIInputPage> createState() => _BMIInputPageState();
}

class _BMIInputPageState extends State<BMIInputPage> {
  GenderType selectedGender = GenderType.male;

  double height = 180;
  int age = 24;
  double weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackGroundColor,
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        leading: const Icon(Icons.health_and_safety),
        backgroundColor: kbackGroundColor,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: cardcontrol(
                        bgcolor: selectedGender == GenderType.male
                            ? kCardActiveBackground
                            : kCardInActiveBackground,
                        childcard: const iconControl(
                            icondata: FontAwesomeIcons.male, text: 'MALE'),
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.male;
                          });
                        }),
                  ),
                  Expanded(
                    child: cardcontrol(
                        bgcolor: selectedGender == GenderType.female
                            ? kCardActiveBackground
                            : kCardInActiveBackground,
                        childcard: const iconControl(
                            icondata: FontAwesomeIcons.female, text: 'FEMALE'),
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.female;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Expanded(
              child: cardcontrol(
                  bgcolor: kCardInActiveBackground,
                  childcard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('HEIGHT', style: klabelText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toStringAsFixed(1), style: knumberText),
                          const Text('cm', style: klabelText)
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: kSliderActiveColor,
                            inactiveTrackColor: kSliderInactiveColor,
                            trackShape: const RectangularSliderTrackShape(),
                            trackHeight: 4.0,
                            thumbColor: kSliderThumbColor,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 12.0),
                            overlayColor: kSliderThumbColor.withAlpha(60),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 28.0)),
                        child: Slider(
                            value: height,
                            min: 100.0,
                            max: 250.0,
                            onChanged: (newValue) {
                              setState(() {
                                height = newValue;
                              });
                            }),
                      )
                    ],
                  ),
                  onPress: () {}),
            ),
            Expanded(
              child: Row(children: [
                Expanded(
                  child: cardcontrol(
                      bgcolor: kCardActiveBackground,
                      childcard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT', style: klabelText),
                          Text('$weight', style: knumberText),
                          Row(children: [
                            Expanded(
                              child: roundedicon(
                                  icondata: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 0) weight--;
                                    });
                                  }),
                            ),
                            Expanded(
                              child: roundedicon(
                                  icondata: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ),
                          ])
                        ],
                      ),
                      onPress: () {}),
                ),
                Expanded(
                  child: cardcontrol(
                      bgcolor: kCardActiveBackground,
                      childcard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE', style: klabelText),
                          Text('$age', style: knumberText),
                          Row(children: [
                            Expanded(
                              child: roundedicon(
                                  icondata: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) age--;
                                    });
                                  }),
                            ),
                            Expanded(
                              child: roundedicon(
                                  icondata: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ),
                          ])
                        ],
                      ),
                      onPress: () {}),
                ),
              ]),
            ),
            Bottombutton(
                buttonText: 'CALCULATE BMI',
                ontap: () {
                  var bmi = CalculateBMI(height, weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BMIresult(
                              bmi: bmi.calculate(),
                              bmiresult: bmi.getResult(),
                              bmiNarration: bmi.getNarration())));
                }),
          ],
        ),
      ),
    );
  }
}
