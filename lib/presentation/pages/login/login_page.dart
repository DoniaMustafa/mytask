import 'package:flutter/material.dart';
import 'package:mytask/presentation/pages/login/login_widgets/login_widgets.dart';
import 'package:mytask/presentation/widgets/custom_text_form_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LoginWidgets()
    );
  }
}
