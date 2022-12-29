import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: blue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTotalBalance(),
          SizedBox(
            height: 20.0,
          ),
          CustomTextWidget(
              txt: '25.000 LE',
              style: textThemeData.headlineMedium!.copyWith(color: white)),
          Spacer(
            flex: 1,
          ),
          buildAddBalance(),
        ],
      ),
    );
  }

  buildTotalBalance() => Row(
        children: [
          CustomTextWidget(
              txt: 'Total Balance',
              style: textThemeData.titleSmall!.copyWith(color: white)),
          SizedBox(
            width: 8.0,
          ),
          Icon(
            Icons.visibility_off,
            size: 20,
            color: gray,
          ),
        ],
      );
  buildAddBalance() => Row(
        children: [
          Icon(Icons.payment, size: 20, color: white),
          SizedBox(
            width: 5,
          ),
          CustomTextWidget(
              txt: 'withdraw',
              style: textThemeData.bodyLarge!.copyWith(color: white)),
          Spacer(
            flex: 1,
          ),
          Icon(
            Icons.add,
            size: 20,
            color: white,
          ),
          CustomTextWidget(
              txt: 'Add balance',
              style: textThemeData.bodyLarge!.copyWith(color: white)),
        ],
      );
}
