import 'package:flutter/material.dart';
import 'package:mytask/confg/text_theme.dart';
import 'package:mytask/constant.dart';
import 'package:mytask/presentation/pages/payment_services/payment_services_page.dart';
import 'package:mytask/presentation/widgets/custom_text_widget.dart';

class ItemSettingWidget extends StatelessWidget {
  const ItemSettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(20),
      child: Column(
        children: List.generate(listItem.length, (index) => GestureDetector(
          onTap: (){
            switch(index){
              case 0 : Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentServicesPage()));
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(

              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              elevation: 4.0,
              child: ListTile(
                leading:Icon( listItem[index].icon),
                title: CustomTextWidget(txt: listItem[index].txt,style: textThemeData.titleMedium),
                trailing: Icon( listItem[index].iconData),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
