import 'package:flutter/material.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class CustomTransactionDateWidget extends StatelessWidget {
  const CustomTransactionDateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Row(

            children: [
              CustomTextWidget(
                  txt: 'Select Date', style: textThemeData.bodyLarge),
              const Icon(
                Icons.arrow_drop_down,
                size: 15,
              ),
              CustomTextWidget(
                  txt: '14th Mar,2022', style: textThemeData.bodyLarge),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
          child: Row(
            children: [
              CustomTextWidget(
                  txt: 'Total Amount:', style: textThemeData.bodyLarge),
              CustomTextWidget(
                  txt: '12,000 LE',
                  style: textThemeData.bodyMedium!
                      .copyWith(color: Colors.green)),
            ],
          ),
        )
      ],
    );
  }
}
