import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_button_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 350, maxWidth: double.infinity),

      decoration: const BoxDecoration(
          color: Color(0xffF5FAFE),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          buildCircleImage(),
          SizedBox(height: 15.0,),
          buildUserInfo(),
          SizedBox(height: 15.0,),

          buildEditButton(),
        ],
      ),
    );
  }

  Widget buildCircleImage() => Container(
        height: 120.0,
        width: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
            border: Border.all(width: 1, color: blue, style: BorderStyle.solid),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/User_font_awesome.svg/2048px-User_font_awesome.svg.png'),
                fit: BoxFit.fill)),
      );
  buildUserInfo() => Column(
        children: [
          CustomTextWidget(txt: 'Sabrine Wag',style: textThemeData.titleLarge!.copyWith(color: blue),),
          SizedBox(height: 10.0,),

          CustomTextWidget(txt: '@sabrinewag12',style: textThemeData.bodyLarge!.copyWith(color: blue)),
        ],
      );
  buildEditButton() => CustomButtonWidget(
        txt: 'Edit profile',
        color: blue,
        onPress: () {},
        style: textThemeData.titleLarge!,
      );
}
