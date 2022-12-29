import 'package:flutter/material.dart';
import 'package:mytask/presentation/pages/payment_services/payment_services_widget/QR_box_widget.dart';
import 'package:mytask/presentation/pages/payment_services/payment_services_widget/balance_widget.dart';
import 'package:mytask/presentation/pages/payment_services/payment_services_widget/transaction_widget.dart';

class PaymentServicesPage extends StatelessWidget {
  const PaymentServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding:  EdgeInsets.fromLTRB(20, 50, 20, 30),
       child: SingleChildScrollView
         (
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,

           children: const[
             BalanceWidget(),
             SizedBox(height: 90.0,),
             QRBoxWidget(),
             SizedBox(height: 30.0,),
             TransactionWidget()
           ],
         ),
       ),
     ),
    );
  }
}
