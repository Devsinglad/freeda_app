import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//
// TextFormField passwordWidget(
//     validator,
//     String text,
//     bool isPasswordType,
//     IconData? icon,
//     TextEditingController controller,
//     {required IconButton
//     suffixIcon}
//     ){
//
//   bool visible = false;
//
//   return TextFormField(
//     validator:validator,
//     controller: controller,
//     obscureText: visible,
//     cursorColor: Colors.black,
//     style: TextStyle(color: Colors.black.withOpacity(0.9)),
//     decoration: InputDecoration(
//       suffixIcon: GestureDetector(
//         onTap: () {
//           if(visible==true){
//             setState(() {
//               visible=false;
//             });
//           } else{
//             setState(() {
//               visible =true;
//             });
//           }
//         },
//           child: visible== true ? Icon(Icons.visibility_off_outlined,) :
//           Icon(Icons.visibility,)
//       ),
//
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//       borderSide: BorderSide.none),
//       hintText: text,
//       hintStyle: TextStyle(color: Color(0xff7F8192)),
//       fillColor: Color(0xffF5F6FA),
//       filled: true,
//     ),
//
//     keyboardType: isPasswordType
//         ? TextInputType.visiblePassword
//         : TextInputType.emailAddress,
//   );
// }
//
// void setState(Null Function() param0) {
// }

import 'package:flutter/material.dart';

class kTextFormField  extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPasswordType;
  final IconData? icon;
  final Widget? passwordIcon;
  final validator;
  final double width;

  const kTextFormField({super.key,this.passwordIcon, required this.hint, required this.textEditingController, required this.keyboardType, required this.obscureText, required this.icon, required this.validator, required this.width, required this.isPasswordType});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      controller: textEditingController,
      obscureText: obscureText,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        fillColor: Color(0xffF5F6FA),
        filled: true,
        suffixIcon: isPasswordType ? passwordIcon : null,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        ),
        hintStyle:TextStyle(
          color: Color(0xff7F8192),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

