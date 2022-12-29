import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormFieldConfirmCode extends StatelessWidget {
  const CustomFormFieldConfirmCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25.0,
      child: TextFormField(
        onChanged: (val){
          if(val.length ==1)
            {
              FocusScope.of(context).nextFocus();
            }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
