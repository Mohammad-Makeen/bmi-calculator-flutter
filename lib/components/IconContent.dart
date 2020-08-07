import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class MaleFemaleWidget extends StatelessWidget {
  final String description;
  final IconData maleOrFemaleIcon;
  MaleFemaleWidget(
      {@required this.maleOrFemaleIcon, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          maleOrFemaleIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          description,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
