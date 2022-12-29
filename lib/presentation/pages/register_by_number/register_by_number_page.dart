import 'package:flutter/material.dart';
import 'package:mytask/presentation/pages/register_by_number/register_by_phone_widget/register_phone_widget.dart';

class RegisterByPhonePage extends StatelessWidget {
  const RegisterByPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: RegisterByPhoneWidget(),
    );
  }
}