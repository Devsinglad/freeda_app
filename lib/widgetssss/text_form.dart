
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForms extends StatelessWidget {

  double height;
  double width;

   TextForms({Key? key,
     required this.height,
     required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1){
            FocusScope.of(context).nextFocus();
          }
          },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
