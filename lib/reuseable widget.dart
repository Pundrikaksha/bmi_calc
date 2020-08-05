import 'package:flutter/cupertino.dart';

class NewWidget extends StatelessWidget {
  NewWidget({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  Function onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardChild,
          color: colour,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
