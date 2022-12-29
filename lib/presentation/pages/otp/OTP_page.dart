import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/confirm_pass/confirm_pass_page.dart';
import 'package:mytask/presentation/widgets/custom_button_widget.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFormFieldConfirmCode(),
                CustomFormFieldConfirmCode(),
                CustomFormFieldConfirmCode(),
                CustomFormFieldConfirmCode(),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          buildResentCode(),
          SizedBox(
            height: 50.0,
          ),
          buildNextBut(context)
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
  buildNextBut(context)=>CustomButtonWidget(
      txt: 'Next', color: blue, onPress: ()=>
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmPassPage()))
      ,style: textThemeData.bodyLarge!.copyWith(color: white));
}
