import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/pages/login_phone/login_by_phone_page.dart';
import 'package:mytask/presentation/pages/register_by_number/register_by_number_page.dart';
import 'package:mytask/presentation/widgets/custom_button_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_create_account_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_form_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class RegisterByPhoneWidget extends StatelessWidget {
  RegisterByPhoneWidget({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(txt: 'Enter your mobile \nnumber to register',style:  textThemeData.headlineMedium,),
            const SizedBox(
              height: 20,
            ),
            CustomTextWidget(txt: 'We will send you a confirmation code',style:  textThemeData.bodyLarge,),
            const SizedBox(
              height: 30,
            ),
            buildPhoneNumber(),
            const SizedBox(
              height: 20,
            ),
            buildLoginAlohaID(),
            const SizedBox(
              height: 20,
            ),
            buildNextButton(context),
            const SizedBox(
              height: 20,
            ),
            buildCreateAccount(context),
          ]),
    );
  }

  buildPhoneNumber() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            txt: 'Phone Number',
            style:textThemeData.bodyMedium!.copyWith(color: gray),
          ),
          const SizedBox(
            height: 15.0,
          ),
          CustomTextFormWidget(txtField: '', val: '', controller: controller),
        ],
      );
  buildLoginAlohaID() =>  Align(
        alignment: Alignment.centerRight,
        child: CustomTextWidget(
         txt: 'Or Login with Aloha ID',
          style: textThemeData.bodyMedium!.copyWith(color: blue,decoration: TextDecoration.underline),
        ),
      );
  buildNextButton(context) => CustomButtonWidget(
    color: blue,
        txt: 'Next',
    style: textThemeData.titleLarge!.copyWith(color: white),
        onPress: () =>Navigator.push(context,
            MaterialPageRoute(builder: (context) => RegisterByPhonePage())),
      );
  buildCreateAccount(context) => GestureDetector(
    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginByPhonePage())),
    child: CustomTextCreateAccountWidget(
      text1: 'Don’t have an account?',
      style1: textThemeData.bodyMedium!.copyWith(color: black),
      text2: 'Log in',
      style2: textThemeData.bodyMedium!.copyWith(color: blue),
    ),


  );
}
