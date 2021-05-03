import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const Card({
  //   Key key,
  // }) : super(key: key);
  ReusableCard({@required this.colour , this.cardChild,this.onPressed});
  
  final Color colour;
  final Widget cardChild;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(        
          child: cardChild,
          margin: EdgeInsets.all(12),    
          decoration: BoxDecoration(
            color: colour,   
            borderRadius: BorderRadius.circular(10),
          ),     
      ),
    );
  }
}