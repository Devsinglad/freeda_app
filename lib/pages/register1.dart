import 'package:flutter/material.dart';

import '../widget/password_widget.dart';
import '../widget/reuseablewidget.dart';

class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  bool _checked= true;
  TextEditingController _fullnameEditingController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _confirmpasswordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 91,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 41.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Color(0xff151940),
                      fontSize: 44,
                      fontFamily: 'Gilroy-Bold'),
                ),
              ),
              SizedBox(
                height: 21,
              ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 53,
                      width: 161,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 41),
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius:
                                BorderRadius.circular(8),
                                ),
                                primary: Color(0xFFF5F6FA)
                            ),
                            child: Text("GOOGLE",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),)),
                      ),
                    ),
                 Spacer(),
                 Padding(
                   padding: const EdgeInsets.only(right: 18.0),
                   child: Container(
                       child: (
                         SizedBox(
                           height: 53,
                           width: 161,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 41),
                             child: ElevatedButton(onPressed: () {},
                                 style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(borderRadius:
                                     BorderRadius.circular(8),
                                     ),
                                     primary: Color(0xFFF5F6FA)
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text('FACEBOOK',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                 )
                             ),
                           ),
                         )
                       )
                   ),
                 )
               ],
             ),
             Text(
                'or',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xff151940),
                ),
              ),
              SizedBox(
                    height: 43,
              ),
              Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: reusableTextFormField(
                        'Full name ', false, _fullnameEditingController),
              ),
              SizedBox(
                    height: 12,
              ),
              Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: reusableTextFormField(
                        'Enter Email Address', false, _emailTextController),
              ),
              SizedBox(height: 12),
              Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: passwordWidget(
                      'Password',
                      true,
                      Icons.visibility,
                      _passwordEditingController, suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () { },),
                    ),
              ),
              SizedBox(height: 12),
              Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: passwordWidget(
                      ' Enter Password',
                      true,
                      Icons.visibility,
                      _confirmpasswordEditingController, suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () { },),
                    ),
              ),
              Row(
                    children: [
                      Checkbox( value: _checked,
                        onChanged: (val) {
                          setState(() {
                            _checked = val!;
                            if (val == true) {
                            }
                          });
                        },),
                      Text('I’ve read and agree to the terms of privacy policy',
                        style: TextStyle(fontWeight: FontWeight.w700,
                            color: Color(0xff7F8192),
                            fontSize: 12,
                            fontFamily: 'inter'
                        ),),
                    ],
              ),
              SizedBox(height: 10,),
              Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: signInsignUpButton(context, true, () {}),
              ),
              Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Already have an account?', style: TextStyle(
                        color: Color(0xff151940),
                        fontSize: 14,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 13,),
              Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Text('LOGIN',style: TextStyle(color: Color(0xff314BCE),
                            fontSize: 14,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.bold),),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 300.0),
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
              ),
                  ],
                ),
    ]
        )
      ),)));
}
}