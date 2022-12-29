import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytask/confg/color.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/presentation/pages/payment_services/payment_services_widget/payment_history_widget.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class TransactionWidget extends StatefulWidget {
  const TransactionWidget({Key? key}) : super(key: key);

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  bool isOpen = false;
  changeState() {
    setState(() {
      isOpen = !isOpen;
    });
  }
  List<bool> isSelect = [true, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTransBox(),
        SizedBox(
          height: 30,
        ),
        Visibility(visible: isOpen, child: buildHistory())
      ],
    );
  }

  buildTransBox() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: white, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: buildTrans());

  buildTrans() => Row(
        children: [
          CustomTextWidget(
            txt: 'Transaction',
            style: textThemeData.titleLarge,
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
              onTap: () => changeState(),
              child: const Icon(
                Icons.arrow_drop_down,
                size: 30,
              ))
        ],
      );
  buildHistory() => Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        // constraints: BoxConstraints(maxHeight: 300),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  2,
                  (index) {
                    switch (index) {
                      case 0:
                        buildhitoryTitle('Payment history', index);
                        break;
                      default:
                        buildhitoryTitle('Recent history', index);
                    }
                    return Container();
                  },
                ),
              ),
            ),
            SizedBox(height: 15.0),
            // PaymentHistoryWidget(isSelect:isSelect ,)
          ],
        ),
      );

  buildhitoryTitle(String txt, i) => GestureDetector(
        onTap: () {
          setState(() {
            isSelect[i] != isSelect[i];
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          // height: 50,
          decoration: BoxDecoration(
              color: isSelect[i] ? blue : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(20))),

          child: CustomTextWidget(
            txt: txt,
            style: textThemeData.titleSmall,
          ),
        ),
      );
}
