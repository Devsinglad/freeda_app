import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/customButton.dart';

import '../../widgets/AppDrawer.dart';
import '../../widgets/Topwidget.dart';

class Identity_Verification extends StatelessWidget {
  const Identity_Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const App_Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Top(),
              SizedBox(
                height: 17,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: MyText(
                  title: 'Identity\nVerification',
                  size: 46,
                  color: Colors.black,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: MyText(
                  title:
                      'Please Verify Your identity by uploading your\npassport or driving licence',
                  size: 14,
                  color: Colors.black,
                  weight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 67,
              ),
              Verify(),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  MyText(
                    title: 'PRIVACY',
                    size: 15,
                    color: Color(0xff7F8192),
                    weight: FontWeight.w500,
                  ),
                  Icon(
                    Icons.arrow_right_outlined,
                    color: Color(0xff7F8192),
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  Center(
                    child: MyText(
                      title: 'Verify',
                      size: 18,
                      color: Colors.white,
                      weight: FontWeight.w700,
                    ),
                  ),
                  56,
                  185,
                  Color(0xff5771F9),
                  8,
                  Color(0xff5771F9),
                  2,
                  0)
            ],
          ),
        ),
      ),
    );
  }
}

class Verify extends StatelessWidget {
  const Verify({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    Icon(
                      Icons.upload,
                      color: Colors.white,
                      size: 50,
                    ),
                    105,
                    99,
                    Color(0xffD1D8F5),
                    10,
                    Colors.transparent,
                    0,
                    0),
                MyText(
                  title: 'Your\nPassport',
                  size: 24,
                  color: Colors.black,
                  weight: FontWeight.w600,
                )
              ],
            ),
            234,
            149,
            Color(0xffF5F6FA),
            10,
            Colors.transparent,
            0,
            0),
        CustomButton(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    Icon(
                      Icons.upload,
                      color: Colors.white,
                      size: 50,
                    ),
                    105,
                    99,
                    Color(0xffD1D8F5),
                    10,
                    Colors.transparent,
                    0,
                    0),
                MyText(
                  title: 'Driving\nLicence',
                  size: 24,
                  color: Colors.black,
                  weight: FontWeight.w600,
                )
              ],
            ),
            234,
            149,
            Color(0xffF5F6FA),
            10,
            Colors.transparent,
            0,
            0),
      ],
    );
  }
}
