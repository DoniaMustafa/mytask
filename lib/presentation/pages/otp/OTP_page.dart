import 'package:flutter/material.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_form_field_confirm_code.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,

        children: [
          buildTitleAndSubTitle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFormFieldConfirmCode(),
              CustomFormFieldConfirmCode(),
              CustomFormFieldConfirmCode(),
              CustomFormFieldConfirmCode(),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          buildResentCode(),
        ],
      ),
    );
  }

  buildTitleAndSubTitle() => Column(
        children: [
          CustomTextWidget(txt: 'Enter code sent \n to your number',style:  textThemeData.headlineMedium,),
          const SizedBox(
            height: 30,
          ),
          CustomTextWidget(txt: 'We sent it to the number +02 01234 5678 91',style:  textThemeData.bodyLarge,),
          const SizedBox(
            height: 20,
          ),
        ],
      );

  buildResentCode() => CustomTextWidget(txt: 'Resent Code i  00:55',style:  textThemeData.bodyMedium,);
}
