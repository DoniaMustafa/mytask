import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/pages/login_phone/login_by_phone_page.dart';
import 'package:mytask/presentation/pages/register_by_number/register_by_number_page.dart';
import 'package:mytask/presentation/pages/setting/setting_page.dart';
import 'package:mytask/presentation/widgets/custom_button_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_create_account_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_form_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class LoginWidgets extends StatelessWidget {
  LoginWidgets({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  TextEditingController pass = TextEditingController();

  login(context)=>Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context)=>SettingPage()), (route) => false);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextWidget(
            txt: 'Login account',
            style: textThemeData.headlineMedium,
          ),
          const SizedBox(
            height: 40.0,
          ),
          buildUserName(),
          const SizedBox(
            height: 20.0,
          ),
          buildPassword(),
          const SizedBox(
            height: 20.0,
          ),
          buildLoginByPhone(context),
          const SizedBox(
            height: 20.0,
          ),
          CustomButtonWidget(
            color: blue,
            txt: 'Login',
            style: textThemeData.titleLarge!.copyWith(color: white),
            onPress: () =>login(context),
          ),
          const SizedBox(
            height: 20.0,
          ),
          buildCreateAccount(context),
        ],
      ),
    );
  }

  buildUserName() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('User Name',style:  textThemeData.bodyMedium!.copyWith(color: gray),),
          const SizedBox(
            height: 15.0,
          ),
          CustomTextFormWidget(txtField: '', val: '', controller: controller),
        ],
      );
  buildPassword() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Password',style:  textThemeData.bodyMedium!.copyWith(color: gray),),
          const SizedBox(
            height: 15.0,
          ),
          CustomTextFormWidget(txtField: '', val: '', controller: pass),
        ],
      );
  buildLoginByPhone(context) => GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginByPhonePage())),
        child:  Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Or Login with Mobile phone',
            style: textThemeData.bodyMedium!.copyWith(color: blue,decoration: TextDecoration.underline),
          ),
        ),
      );
  buildCreateAccount(context) =>GestureDetector(
    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterByPhonePage())),
    child:  CustomTextCreateAccountWidget(
          text1: 'Don’t have an account?',
          style1: textThemeData.bodyLarge!.copyWith(color: black),
          text2: 'Sign up',
      style2: textThemeData.bodyLarge!.copyWith(color: blue),
        ),
  );
}
