import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/reuseablewidget.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Country? _selectedCountry;

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

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 91,),
                Padding(
                  padding: const EdgeInsets.only(left:18,right: 200.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Color(0xff151940),
                        fontSize: 44,
                        fontFamily: 'Gilroy-Bold'),
                  ),
                ),
                SizedBox(height: 41,),
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
                  padding: const EdgeInsets.only(right:200.0),
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
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Choose your location',
                      prefixIcon: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
                        margin:EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [Container(
                            padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1),
                            decoration: BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                        child: MaterialButton(
                          child:  country == null
                              ? Container()
                              : Column(
                            children: <Widget>[
                              Image.asset(
                                country.flag,
                                package: countryCodePackageName,
                                width: 50,
                              ),
                            ],
                          ),
                          onPressed: _onPressed,
                        ),
                          ),
                          ],
                        ),
                      ),
                      hintStyle: TextStyle(color: Color(0xff7F8192),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 180.0),
                  child: Text('Enter your Phone Number',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff151940),
                      fontSize: 16,
                      fontFamily: 'inter'),),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: signInsignUpButton(context, true, () {}),
                ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Row(
                    children: [
                      logowidget('images/google.png'),
                      Spacer(),
                      logowidget('images/fb.png'),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 190.0),
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
                        padding: const EdgeInsets.only(right: 280.0),
                        child: logowidget('images/arrow.png'),
                      )
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
      });
    }
  }


}

