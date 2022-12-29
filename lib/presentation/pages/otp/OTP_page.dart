import 'package:flutter/material.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          buildTitleAndSubTitle(),


          SizedBox(height: 50.0,),
          buildResentCode(),
        ],
      ) ,
    );
  }


  buildTitleAndSubTitle()=>Column(
    children: [
      CustomTextWidget(txt: 'Enter code sent \n to your number'),
      const SizedBox(
        height: 30,
      ),
      CustomTextWidget(txt: 'We sent it to the number +02 01234 5678 91'),
      const SizedBox(
        height: 20,
      ),
    ],
  );
  
  buildResentCode()=>CustomTextWidget(txt: 'Resent Code i  00:55');
}
