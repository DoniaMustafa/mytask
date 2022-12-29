import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class CustomTextFormWidget extends StatelessWidget {
  CustomTextFormWidget({
    Key? key,
    required this.txtField,
    this.controller,
    required this.val,
    this.isNum = false,
    this.txt = '',
  }) : super(key: key);
  final String txtField;
  TextEditingController? controller;
  final String val;
  final bool isNum;
  final String? txt;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      elevation: 7.0,
      child: TextFormField(
        style: textThemeData.titleMedium,
        controller: controller,
        validator: (String? validate) {
          if (validate!.isEmpty) {
            return val;
          }
        },
        decoration: InputDecoration(
            prefix: CustomTextWidget(
              txt: txt!,
              style: textThemeData.bodyLarge!.copyWith(color: gray),
            ),
            filled: true,
            fillColor: white.withOpacity(0.7),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: white),
              borderRadius: BorderRadius.circular(30.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30.0),
                gapPadding: 10.0),
            constraints: const BoxConstraints(
              maxWidth: 400,
            )),
      ),
    );
  }
}
