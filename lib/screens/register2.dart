import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screen_precious/verified.dart';
import '../screen_precious/register1.dart';
import '../screen_precious/signin.dart';

import '../widgets/reuseablewidget.dart';
import 'final_verifypage.dart';

final TextEditingController countryNameController = TextEditingController();
final TextEditingController phoneNumberController = TextEditingController();

class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  Country? _selectedCountry;

  String? code;
  String dailCodeDigits = "+000";
  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  // picker()

  retrieveCountryNameAndPhone() async {
    CollectionReference _collectionRef2 =
        FirebaseFirestore.instance.collection('usersPhoneNumber');
    return _collectionRef2
        .doc(emailTextController.text)
        .set({
          'country': countryNameController.text,
          'phone number': phoneNumberController.text,
        })
        .then(
          (value) => print('user data added'),
        )
        .catchError(
          (error) => print("something is wrong"),
        );
  }

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Register',
                style: TextStyle(
                    color: Color(0xff151940),
                    fontSize: 44,
                    fontFamily: 'Gilroy-Bold'),
              ),
              SizedBox(
                height: 41,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Text(
                  'Please enter your phone number and\nlocation so we can verify you.',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff151940),
                      fontSize: 18,
                      fontFamily: 'inter'),
                ),
              ),
              SizedBox(height: 41),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Text(
                  'Enter your location',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff151940),
                      fontSize: 16,
                      fontFamily: 'inter'),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.number,
                readOnly: true,
                textInputAction: TextInputAction.done,
                controller: countryNameController,
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Choose your location',
                  hintStyle: TextStyle(
                    color: Color(0xff7F8192),
                  ),
                  prefixIcon: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Container(
                            child: country == null
                                ? Container()
                                : Row(
                                    children: <Widget>[
                                      Image.asset(
                                        country.flag,
                                        package: countryCodePackageName,
                                        width: 40,
                                      ),
                                      SizedBox(
                                        width: 14,
                                      ),
                                      // For reasons unknown to me the vertical divider is not showing in the app
                                      // You can assist in figuring out why.
                                      VerticalDivider(
                                        thickness: 2,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 14,
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: _onPressed,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Enter your Phone Number',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff151940),
                    fontSize: 16,
                    fontFamily: 'inter'),
              ),
              SizedBox(height: 15),
              Container(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  controller: phoneNumberController,
                  maxLines: 1,
                  maxLength: 12,
                  decoration: InputDecoration(
                    prefix: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        code.toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              signInsignUpButton(context, true, () async {
                await retrieveCountryNameAndPhone();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Verified()));
              }),
              SizedBox(height: 24),
              Center(
                child: Text(
                  'or',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xff151940),
                  ),
                ),
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
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  primary: Color(0xFFF5F6FA)),
                              child: Text(
                                "GOOGLE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Container(
                            child: (SizedBox(
                          height: 53,
                          width: 161,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 41),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    primary: Color(0xFFF5F6FA)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'FACEBOOK',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                          ),
                        ))),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Already have an account?',
                style: TextStyle(
                    color: Color(0xff151940),
                    fontSize: 14,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 13,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignIn(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Color(0xff314BCE),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Icon(Icons.arrow_forward, color: Color(0xff314BCE)),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void _onPressed() async {
    final country =
        await Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return PickerPage();
    }));
    if (country != null) {
      setState(() {
        _selectedCountry = country;

        countryNameController.text = _selectedCountry!.name.toString();
        code = _selectedCountry!.callingCode;
      });
      setState(() {});
    }
  }
}
