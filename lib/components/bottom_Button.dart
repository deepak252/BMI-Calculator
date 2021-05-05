import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';


class BottomButton extends StatelessWidget {

  BottomButton({@required this.btnTitle,@required this.onTap});
  final String btnTitle;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            btnTitle,
            style:kLargeButtonTextStyle,
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.only(bottom:10),
      ),
    );
  }
}





// onTap:(){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
//             },

















// class BottomButton extends StatelessWidget {

//   BottomButton({@required btnTitle,@required onTap});
//   final String btnTitle;
//   final Function onTap;


//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap(),
//       child: Container(
//         child: Center(
//           child: Text(
//             btnTitle,
//             style:kLargeButtonTextStyle,
//           ),
//         ),
//         height: kBottomContainerHeight,
//         width: double.infinity,
//         color: kBottomContainerColor,
//         margin: EdgeInsets.only(top: 12),
//         padding: EdgeInsets.only(bottom:10),
//       ),
//     );
//   }
// }