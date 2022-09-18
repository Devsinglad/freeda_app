import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Image logowidget(String imageName) {
  return Image.asset(
    imageName,
  );
}

Text Txtnum(String text) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        fontFamily: 'inter',
        color: Color(0xff151940)),
  );
}

TextFormField reusableTextFormField(
  validator,
  String text,
  bool isPasswordType,
  TextEditingController controller,
  // FormFieldValidator validator,
) {
  return TextFormField(
    validator: validator,
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      hintText: text,
      hintStyle: TextStyle(
        color: Color(0xff7F8192),
      ),
      fillColor: Color(0xffF5F6FA),
      filled: true,
    ),
  );
}

Container signInsignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.height,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        child: Text(isLogin ? 'Register' : 'SignUp',
            style: const TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontFamily: 'Gilroy-Bold',
                fontWeight: FontWeight.bold)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black87;
              }
              return Color(0xff5771F9);
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))))),
  );
}

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}

class DashForm extends StatelessWidget {
  const DashForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 64,
          height: 68,
          child: TextFormField(
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.w900,
            ),
            onChanged: (value) {
              if (value.length == 1) {
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
        )
      ],
    );
  }
}
