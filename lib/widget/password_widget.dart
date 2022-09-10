import 'package:flutter/material.dart';


TextFormField passwordWidget(String text, bool isPasswordType, IconData? icon,
    TextEditingController controller,
    {required IconButton suffixIcon}) {
  return TextFormField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
      suffixIcon: Icon(
        icon,
        color: Colors.grey,
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
