import 'package:flutter/material.dart';
import 'package:mytask/presentation/pages/login_phone/login_by_phone_widget/login_phone_widget.dart';

class LoginByPhonePage extends StatelessWidget {
  const LoginByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LoginByPhoneWidget(),
    );
  }
}
