import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';

class CustomIconBoxWidget extends StatelessWidget {
  const CustomIconBoxWidget({Key? key, required this.iconColor2,required this.icon1, required this.icon2}) : super(key: key);
final IconData icon1;
final IconData icon2;
  final Color iconColor2;
  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,15.0),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(style: BorderStyle.none),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Icon(icon1, color: gray,size: 15,)),
         SizedBox(height: 5,),
          Icon(icon2,size: 35,color:iconColor2,),
        ],
      ),
    );
  }
}
