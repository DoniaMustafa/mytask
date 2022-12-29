import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/pages/login/login_page.dart';
import 'package:mytask/presentation/widgets/custom_button_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTitle(),
            SizedBox(height: 50,),
            buildLoginButton(context),
            SizedBox(height: 20,),
            buildSignUpButton(),
          ],
        ),
      ),
    );
  }

  buildTitle() => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextWidget(txt: 'Aloha',style:  textThemeData.displayMedium!.copyWith(color: blue),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                color: yellow,
                alignment: Alignment.centerRight,
              ),
              Container(
                width: 10,
                height: 10,
                color: blue,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ],
      );
  buildLoginButton(context) => CustomButtonWidget(
        txt: 'Login',
    color: white,
        style: textThemeData.titleMedium!,
        onPress: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
            (route) => false),
      );
  buildSignUpButton() => CustomButtonWidget(
    color: blue,
        txt: 'Sign Up',
        style: textThemeData.titleMedium!,
        onPress: () {},
      );
}
