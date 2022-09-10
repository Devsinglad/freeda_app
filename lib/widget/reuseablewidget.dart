import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

Image logowidget (String imageName){
  return Image.asset(
    imageName,
  );
}
TextFormField reusableTextFormField(
String text,
    bool isPasswordType,
    TextEditingController controller
    ){
  return TextFormField(
    controller: controller,
  obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      hintText: text,
      hintStyle: TextStyle(color: Color(0xff7F8192)),
  ),
  );
}

Container signInsignUpButton(
BuildContext context, bool isLogin, Function onTap){
  return Container(
    width: MediaQuery.of(context).size.height,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: (){
        onTap();
      }, child: Text(
        isLogin?'Register': 'SignUp',
      style: const TextStyle(color: Color(0xffFFFFFF),
      fontSize: 16,
      fontFamily: 'Gilroy-Bold',
      fontWeight: FontWeight.bold)
    ),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.pressed)){
          return Colors.black87;
        }
        return Color(0xff5771F9);
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))))),
  );

}
class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Country'),
      ),
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}