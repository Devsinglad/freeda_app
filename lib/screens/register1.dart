import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screenme/signin.dart';
import 'package:freeda_app/screens/google_sign_up.dart';
import 'package:freeda_app/screens/register2.dart';
import '../widgets/password_widget.dart';
import '../widgets/reuseablewidget.dart';

class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  State<Register1> createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  bool _value = false;
  bool  loading =false;
  bool isLoading = false;
  String errorMessage = '';
  TextEditingController _fullnameEditingController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _confirmpasswordEditingController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  final user = FirebaseAuth.instance.currentUser!;

  // The validate functions below are used for the validation of each of the text form fields.
  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty)
      return 'E-mail address is required.';

    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';

    return null;
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty)
      return 'Password is required.';

    return null;
  }

  String? validateConfirmPassword(String? formConfirmPassword) {
    if (_confirmpasswordEditingController.text != _passwordEditingController.text)
      return 'Passwords do not match.';
    return null;
  }

  String? validateFullName(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty)
      return 'Full Name is required.';

    return null;
  }

  // isvalidated is a boolean that is set to false at the beginning and is changed to true when all
  // text form fields have been validated.

  bool isvalidated = false;
  sendName() async {

    CollectionReference _collectionRef=
    FirebaseFirestore.instance.collection('users');
    return _collectionRef.doc().set({
      'firstname':_fullnameEditingController.text,
      'email':_emailTextController.text,
    }).then((value) => print('user data added')).
    catchError((error)=>print("something is wrong")) ;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child:
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                  height: 91,
                ),
                Text(
                  'Register',
                  style: TextStyle(
                      color: Color(0xff151940),
                      fontSize: 44,
                      fontFamily: 'Gilroy-Bold'),
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
                        child: ElevatedButton(onPressed: (){
                          currentUser();
                        },
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
                   Spacer(),
                   Container(
                       child: (
                         SizedBox(
                           height: 53,
                           width: 161,
                           child: ElevatedButton(onPressed: () {},
                               style: ElevatedButton.styleFrom(
                                   shape: RoundedRectangleBorder(borderRadius:
                                   BorderRadius.circular(8),
                                   ),
                                   primary: Color(0xFFF5F6FA)
                               ),
                               child: Text('FACEBOOK',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w500,
                                 ),)
                           ),
                         )
                       )
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
               Form(
                 key: _formkey,
                 child: Column(
                   children: [
                     reusableTextFormField(
                       validateFullName,
                       'Full name ', false, _fullnameEditingController,),
                     SizedBox(
                       height: 12,
                     ),
                     reusableTextFormField(
                         validateEmail,
                         'Email Address', false,
                         _emailTextController),
                     SizedBox(height: 12),
                     passwordWidget(
                       validatePassword,
                       'Password',
                       true,
                       Icons.visibility,
                       _passwordEditingController,
                       suffixIcon: IconButton(
                         icon: Icon(Icons.visibility),
                         onPressed: () { },),
                     ),
                     SizedBox(height: 12),
                     passwordWidget(
                       validateConfirmPassword,
                       'Confirm Password',
                       true,
                       Icons.visibility,
                       _confirmpasswordEditingController, suffixIcon: IconButton(
                       icon: Icon(Icons.visibility),
                       onPressed: () {},),
                     ),
                     SizedBox(height: 20,),
                     Row(
                       children: [
                         Checkbox(value: _value,
                             activeColor: Color(0xff5771F9),
                             onChanged: (value){
                               setState((){
                                 // This clicks the checkbox
                                 this._value = value!;
                                 // This statement sets is validated to true as soon as the checkbox is clicked and
                                 // the text form fields have been validated.
                                 isvalidated = !isvalidated;
                               });

                             }),
                         Text('I’ve read and agree to the terms of privacy policy',
                           style: TextStyle(fontWeight: FontWeight.w700,
                               color: Color(0xff7F8192),
                               fontSize: 12,
                               fontFamily: 'inter'
                           ),),
                       ],
                     ),
                     SizedBox(height: 10,),
                     Center(
                       child: Text(
                         errorMessage,style: TextStyle(
                           color: Colors.red
                       ),),

                     ),
                     loading
                         ? CircularProgressIndicator(
                       valueColor: new AlwaysStoppedAnimation<Color>(Color(0xff5956E9)),
                     ):
                     signInsignUpButton(context, true, () async {
                       if (_formkey.currentState!.validate()) {
                         setState(() {
                           loading = true;
                         });
                         try {
                           sendName();
                           await
                           FirebaseAuth.instance
                               .createUserWithEmailAndPassword(
                             email: _emailTextController.text.trim(),
                             password: _passwordEditingController.text,
                           )
                       .then((value) =>
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                       builder: (context) =>
                                           MyHomePage())));

                           errorMessage = '';
                         } on FirebaseAuthException catch (error) {
                           errorMessage = error.message!;
                         } catch (e, s) {
                           print(e);
                           print(s);
                         }
                         setState(() {
                           loading = false;
                         });
                       }
                       else {
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                           content: const Text(
                               'Fill all the fields and accept the terms and conditions'),
                           duration: const Duration(seconds: 3),),);
                       }
                     }


                       // final localsdk = await SharedPreferences.getInstance();
                       // await localsdk.setString('fullname', _fullnameEditingController.text);
                       // // await localsdk.setString('email', _emailTextController.text);
                       // // await localsdk.setString('password', _passwordEditingController.text);
                       // Navigator.pushReplacement(
                       //             context,
                       //             MaterialPageRoute(
                       //                 builder: (context) =>
                       //                 MainScreen()));
                     ),
                   ],
                 ),
               ),
                  SizedBox(height: 30,),
                  Row(
                  children: [
                    Text('Already have an account?',
                      style: TextStyle(
                        color: Color(0xff151940),
                        fontSize: 14,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: 13,),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Color(0xFF5771F9),
                          fontSize: 14,
                          fontFamily: 'inter',
                          fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward,
                    color: Color(0xFF5771F9),)
                  ],
                ),
                    ],
                  ),
    ]
        ),
            )
      ),)));
}
}