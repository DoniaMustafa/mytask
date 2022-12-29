import 'package:flutter/material.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class CustomTextCreateAccountWidget extends StatelessWidget {
  const CustomTextCreateAccountWidget(
      {Key? key, required this.text1, required this.text2, required this.style2, required this.style1})
      : super(key: key);
  final String text1;
  final String text2;
  final TextStyle style2;
  final TextStyle style1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(
          txt: text1,
          style:style1 ,
        ),
        CustomTextWidget(
          txt: text2,
            style:style2
        ),
      ],
    );
  }
}
