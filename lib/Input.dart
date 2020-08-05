import 'dart:ffi';

import 'package:bmicalc/ResultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'iconcontent.dart';
import 'reuseable widget.dart';
import 'const.dart';

enum Gender { male, female }
int height = 180;
int weight = 50;

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}

class App extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<App> {
  int i = 0;
  var age = 15;
  Gender gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI_Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: NewWidget(
                        onPress: () {
                          setState(() {
                            gender = Gender.male;
                          });
                        },
                        cardChild: Widget1(s: "MALE", f: FontAwesomeIcons.mars),
                        colour: gender == Gender.male
                            ? KCardAnActiveColor
                            : KCardColor),
                  ),
                  Expanded(
                    child: NewWidget(
                        onPress: () {
                          setState(() {
                            gender = Gender.female;
                          });
                        },
                        cardChild:
                            Widget1(s: "FEMALE", f: FontAwesomeIcons.venus),
                        colour: gender == Gender.female
                            ? KCardAnActiveColor
                            : KCardColor),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: NewWidget(
                    colour: KCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: label_text_style,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: label_text_style2,
                            ),
                            Text('cm')
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 13.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 26.0)),
                          child: Slider(
                            value: height.toDouble(),
                            min: 2,
                            max: 250,
                            onChanged: (double new_value) {
                              setState(() {
                                height = new_value.round();
                              });
                            },
                            activeColor: Colors.pink,
                          ),
                        )
                      ],
                    )),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(children: <Widget>[
                Expanded(
                    child: NewWidget(
                  colour: KCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: label_text_style,
                      ),
                      Text(
                        weight.toString(),
                        style: label_text_style2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: FloatingActionButton(
                              heroTag: 1,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                              backgroundColor: Color(0x314C4F5E),
                            ),
                          ),
                          Expanded(
                            child: FloatingActionButton(
                              heroTag: 2,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                              backgroundColor: Color(0x314C4F5E),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: NewWidget(
                        colour: KCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Age',
                              style: label_text_style,
                            ),
                            Text(
                              age.toString(),
                              style: label_text_style2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                  child: FloatingActionButton(
                                    heroTag: 3,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age += 1;
                                      });
                                    },
                                    backgroundColor: Color(0x314C4F5E),
                                  ),
                                ),
                                Expanded(
                                  child: FloatingActionButton(
                                    heroTag: 4,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age -= 1;
                                      });
                                    },
                                    backgroundColor: Color(0x314C4F5E),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))),
              ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: FlatButton(
                child: Center(child: Text('Calculate Your BMI')),
                onPressed: () {
                  setState(() {
                    Bmi = (weight * 100 * 100) / (height * height);
                    getResultWeightType(Bmi);
                    getResultDescription(Bmi);
                  });
                  Navigator.pushNamed(context, '/f');
                },
              ),
              color: KBottomCardColor,
            ),
          )
        ],
      ),
    );
  }
}
