import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class CustomHistoryBoxWidget extends StatelessWidget {
  CustomHistoryBoxWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.image,
   })
      : super(key: key);
  final String title;
  final String subTitle;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  txt: title,
                  style: textThemeData.titleLarge,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextWidget(
                    txt: subTitle,
                    style: textThemeData.bodyMedium!.copyWith(color: gray)),
              ],
            ),
          ),
          CustomTextWidget(
              txt: price,
              style: textThemeData.titleSmall!.copyWith(color: Colors.green)),
        ],
      ),
    );
  }
}
