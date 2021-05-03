import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData iconName;

  IconContent({@required this.label,@required this.iconName});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          // FontAwesomeIcons.mars,
          iconName,
          size: 90,
        ),
        SizedBox(height: 12,),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}