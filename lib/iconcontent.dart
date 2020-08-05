import 'package:flutter/cupertino.dart';
import 'const.dart';

class Widget1 extends StatelessWidget {
  Widget1({this.s, this.f});
  final String s;
  final IconData f;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          f,
          size: 70,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          s,
          style: label_text_style,
        )
      ],
    );
  }
}
