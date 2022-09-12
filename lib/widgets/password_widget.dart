import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

TextFormField passwordWidget(String text, bool isPasswordType, IconData? icon,
    TextEditingController controller,
    {required IconButton suffixIcon}) {
  bool visible = false;

  return TextFormField(
    controller: controller,
    obscureText: visible,
    decoration: InputDecoration(
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            visible=!visible;
          });
        },
        icon: visible?Icon(
          Icons.visibility,
          color: Color(0xFF314BCE),
        ):Icon(
          Icons.visibility_off,
          color: Color(0xFF314BCE),
        ),
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      hintText: text,
      hintStyle: TextStyle(color: Color(0xff7F8192)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

void setState(Null Function() param0) {
}
