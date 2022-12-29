import 'package:flutter/material.dart';
import 'package:mytask/presentation/confirm_pass/confirm_widget/confirm_widget.dart';

class ConfirmPassPage extends StatelessWidget {
  const ConfirmPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: ConfirmWidget(),
    );
  }
}
