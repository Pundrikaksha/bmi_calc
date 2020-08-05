import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI_CAlCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Your Result",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  color: KCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        weight,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kWeightColour,
                            fontSize: 20),
                      ),
                      Text(
                        Bmi.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 60,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: KBottomCardColor,
                child: FlatButton(
                  child: Center(
                    child: Text("RE-CALCULATE"),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ],
        ));
  }
}
