import 'package:flutter/material.dart';
import 'package:joint_project/reusable_widget/reusable_widgets.dart';

import '../../reusable_widget/constants.dart';

class ErrorScreen_Location_Access extends StatelessWidget {
  const ErrorScreen_Location_Access({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(51.0),
          child: Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 102,),
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                      children: [
                    Image.asset('assets/images/img1_location_error.png'),
                    Positioned(bottom: -65.54,left: -56,
                        child: Image.asset('assets/images/left_location_error.png')),
                    Positioned(
                      left:58.79,bottom: -43.46,
                      child: Image.asset
                        ('assets/images/right_location_error.png'),
                    ),
                  ]),
                ),
                SizedBox(height: 80,),
                customTextWidget(text: 'Location Access',color: Colors.white,
                    size: 42, weight: FontWeight.bold,),
                SizedBox(height: 23,),
                customTextWidget(text: 'Hmm. Looks like your location access '
                    'is\n turned off. ',color: Colors.white, align: TextAlign.center,
                  size: 18, weight: FontWeight.w400,),
                SizedBox(height: 67,),
                SizedBox(width: 185, height: 56,
                  child: ElevatedButton(onPressed: (){},
                      child: customTextWidget(text: 'Back',color: kTextColor,
                        weight: FontWeight.w700,size: 18,),
                    style: ElevatedButton.styleFrom(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      primary: Colors.white,
                    ),
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
