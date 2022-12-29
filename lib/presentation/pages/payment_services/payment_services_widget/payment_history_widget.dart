import 'package:flutter/material.dart';
import 'package:mytask/constant.dart';
import 'package:mytask/presentation/widgets/custom%20_transaction_date_widget.dart';
import 'package:mytask/presentation/widgets/custom_history_box_widget.dart';

class PaymentHistoryWidget extends StatelessWidget {
  const PaymentHistoryWidget({Key? key, required this.isSelect}) : super(key: key);
final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomTransactionDateWidget(),
          const SizedBox(
            height: 20.0,
          ),
          buildListPayment()
        ],
      ),
    );
  }

  buildListPayment() {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, int i) => isSelect ==true?buildPaymentItem(i):buildRecentItem(i),
      itemCount: paymentItemList.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }

  buildPaymentItem(int i) => CustomHistoryBoxWidget(
        subTitle: paymentItemList[i].subTitle,
        price: paymentItemList[i].price,
        title: paymentItemList[i].title,
        image: paymentItemList[i].image,
      );
  buildRecentItem(int i) => CustomHistoryBoxWidget(
    subTitle: recentItemList[i].subTitle,
    price: recentItemList[i].price,
    title: recentItemList[i].title,
    image: recentItemList[i].image,
  );

}
