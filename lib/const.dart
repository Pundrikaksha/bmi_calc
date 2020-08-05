import 'package:flutter/material.dart';

const KCardColor = Color(0xFF1D1F33); // all constant start from K
const KCardAnActiveColor = Color(0xFF111328);
const KBottomCardColor = Color(0xFFEA1556);
const label_text_style = TextStyle(fontSize: 15, color: Color(0xFFDEDDE1));
const label_text_style2 = TextStyle(fontSize: 50, fontWeight: FontWeight.w900);
Color kWeightColour = Colors.green;
double Bmi;
String weight = "weight_type";
String description = "information about BMI ";
void getResultWeightType(double Bmi) {
  if (Bmi < 18) {
    weight = "UnderWeight";
    kWeightColour = Colors.yellowAccent.shade700;
  } else if (Bmi > 18 && Bmi < 25) {
    kWeightColour = Colors.greenAccent.shade700;
    weight = "Normal";
  } else if (Bmi > 25) {
    weight = "Over_Weight";
    kWeightColour = Colors.redAccent;
  }
}

void getResultDescription(double Bmi) {
  if (Bmi < 18)
    description =
        "Your weight is less than normal weight.Eat some more healthier food ";
  else if (Bmi > 18 && Bmi < 25)
    description = "Good job! Your body weight is normal";
  else if (Bmi > 25)
    description =
        "Your body weight is greater than normal weight. Do regular exercise";
}
