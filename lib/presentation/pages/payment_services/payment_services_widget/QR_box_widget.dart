import 'package:flutter/material.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_icon_box_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

import '../../../../constant.dart';

class QRBoxWidget extends StatelessWidget {
  const QRBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
          List.generate(iconBoxList.length, (index) => buildItemCard(index)),
    );
  }

  buildItemCard(int i) => Column(
        children: [
          CustomIconBoxWidget(
            iconColor2: iconBoxList[i].icon2color,
            icon1: iconBoxList[i].icon1,
            icon2: iconBoxList[i].icon2,
          ),
          SizedBox(
            height: 15.0,
          ),
          CustomTextWidget(txt: iconBoxList[i].txt,style:textThemeData.bodyMedium ,)
        ],
      );
}
