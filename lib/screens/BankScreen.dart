import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/AppDrawer.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/TopIcon2.dart';
import 'package:freeda_app/widgets/customButton.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: App_Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CustomButton(
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TopIcon2(),
                        MyText(
                          title: 'Bank USA',
                          size: 52,
                          color: Color(0xff151940),
                          weight: FontWeight.bold,
                        ),
                        MyText(
                          title: 'Your BDT account',
                          size: 18,
                          color: Color(0xff151940),
                          weight: FontWeight.w500,
                        ),
                        MyText(
                          title: 'Receipient type : Private',
                          size: 16,
                          color: Color(0xff151940),
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  304,
                  371,
                  Color(0xffF5F6FA),
                  10,
                  Colors.transparent,
                  0,
                  0),
              UserBankDetails(
                  icon: Icon(Icons.person_outline_sharp),
                  title: 'Account holder',
                  subtitle: 'Domhnall Gleeson'),
              UserBankDetails(
                  icon: Icon(Icons.food_bank_outlined),
                  title: 'Bank Name ',
                  subtitle: 'Bank USA'),
              UserBankDetails(
                  icon: Icon(Icons.email_outlined),
                  title: 'Email address',
                  subtitle: 'michael.moore@mail.com '),
              UserBankDetails(
                  icon: Icon(Icons.location_on_outlined),
                  title: 'Address',
                  subtitle: '123 Street/NYC'),
              UserBankDetails(
                  icon: Icon(Icons.settings_ethernet),
                  title: 'Bank Code',
                  subtitle: '123 56366 4456 '),
              UserBankDetails(
                  icon: Icon(Icons.tag),
                  title: 'Account holder',
                  subtitle: 'Domhnall Gleeson'),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget UserBankDetails({
  required Widget icon,
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      children: [
        CustomButton(
          icon,
          52,
          54,
          Colors.white,
          10,
          Color(0xff314BCE).withOpacity(0.1),
          0,
          15,
        ),
        SizedBox(
          width: 17,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyText(
              title: title,
              size: 14,
              color: Color(0xff151940),
              weight: FontWeight.w600,
            ),
            MyText(
              title: subtitle,
              size: 14,
              color: Color(0xffC4C4C4),
              weight: FontWeight.w600,
            ),
          ],
        ),
      ],
    ),
  );
}
