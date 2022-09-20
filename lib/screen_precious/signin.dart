import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screen_precious/register1.dart';

import '../screens/Row3/mainScreen.dart';
import '../widgets/app_button2.dart';
import '../widgets/my_text.dart';
import 'forgetpassword.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String errorMessage = '';
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  title: 'Log In',
                  size: 44,
                  color: Colors.black87,
                  weight: FontWeight.bold,
                ),

                SizedBox(height: 64),

                // creating customised containers

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 53,
                      width: 161,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F6FA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'GOOGLE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 53,
                      width: 161,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F6FA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'FACEBOOK',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 29.5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 2,
                      width: 62,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F6FA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    MyText(
                      title: 'Or',
                      size: 15,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    ),
                    Container(
                      height: 2,
                      width: 62,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F6FA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                //creating email text form

                TextFormField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter Email Address',
                    fillColor: Color(0xffF5F6FA),
                    filled: true,
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 13),

                // creating password text form

                TextFormField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black,
                      ),
                    ),
                    fillColor: Color(0xffF5F6FA),
                    filled: true,
                  ),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.visiblePassword,
                ),

                SizedBox(height: 20),

                // creating text

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgetPassword(),
                            ),
                          );
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5771F9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Center(
                  child: Text(
                    errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                SizedBox(height: 52),

                // creating a customised button

                GestureDetector(
                  onTap: () async {
                    try {
                      await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                            email: _emailcontroller.text.trim(),
                            password: _passwordcontroller.text,
                          )
                          .then(
                            (value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ),
                            ),
                          );

                      errorMessage;
                    } on FirebaseAuthException catch (error) {
                      errorMessage = error.message!;
                      print(errorMessage);
                    } catch (e, s) {
                      print(e);
                      print(s);
                    }
                  },
                  child: Center(
                    child: AppButtonBig(
                      textColor: Colors.white,
                      backgroundColor: Color(0xff5771F9),
                      borderColor: Colors.grey,
                      text: "Log In",
                      height: 56,
                      width: 332,
                      value: 8,
                      size: 18,
                    ),
                  ),
                ),

                SizedBox(height: 80),

                //creating text

                MyText(
                  title: 'Don’t have an account?',
                  size: 14,
                  color: Colors.black54,
                  weight: FontWeight.bold,
                ),

                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Register1(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      MyText(
                        title: 'REGISTER',
                        size: 16,
                        color: Color(0xff314BCE),
                        weight: FontWeight.bold,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Color(0xff314BCE),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
