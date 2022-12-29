import 'package:flutter/cupertino.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_button_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_form_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class ConfirmWidget extends StatelessWidget {
  ConfirmWidget({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextWidget(
            txt: 'Enter Password',
            style: textThemeData.headlineSmall,
          ),
          SizedBox(
            height:70,
          ),
          buildPassword(),
          SizedBox(
            height: 20,
          ),
          buildConfirmPassword(),
          SizedBox(
            height: 90,
          ),
          buildSignUpButton(),
        ],
      ),
    );
  }

  buildPassword() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            txt: 'Password',
            style: textThemeData.bodyMedium!.copyWith(color: gray),
          ),
          const SizedBox(
            height: 15.0,
          ),
          CustomTextFormWidget(txtField: '', val: '', controller: controller),
        ],
      );

  buildConfirmPassword() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            txt: 'Confirm Password',
            style: textThemeData.bodyMedium!.copyWith(color: gray),
          ),
          const SizedBox(
            height: 15.0,
          ),
          CustomTextFormWidget(txtField: '', val: '', controller: controller),
        ],
      );

  buildSignUpButton() => CustomButtonWidget(
        color: blue,
        txt: 'Sign Up',
        style: textThemeData.bodyLarge!.copyWith(color: white),
        onPress: () {},
      );
}
