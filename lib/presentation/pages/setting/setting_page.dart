import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/presentation/pages/setting/setting_widget/item_setting_widget.dart';
import 'package:mytask/presentation/pages/setting/setting_widget/user_info_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:const [
            UserWidget(),
            SizedBox(height: 50,),
            ItemSettingWidget()
          ],
        ),
      ),
    );
  }
}
