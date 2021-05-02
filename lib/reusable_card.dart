import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const Card({
  //   Key key,
  // }) : super(key: key);
  ReusableCard({@required this.colour , this.cardChild});
  
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(12),    
      decoration: BoxDecoration(
        color: colour,   
        borderRadius: BorderRadius.circular(10),
      ),     
    );
  }
}