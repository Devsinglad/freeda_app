import 'package:flutter/material.dart';

import '../../widgets/constants.dart';
import '../../widgets/reusable_widgets.dart';

class NoNewActivity extends StatelessWidget {
  const NoNewActivity({Key? key}) : super(key: key);

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
                        Image.asset('assets/images/img1_no_new_activity_error.png'),
                        Positioned(bottom: -65.54,left: -56,
                            child: Image.asset('assets/images/left_no_new_activity_error.png')),
                        Positioned(
                          left:58.79,bottom: -43.46,
                          child: Image.asset
                            ('assets/images/right_no_new_activity_error.png'),
                        ),
                      ]),
                ),
                SizedBox(height: 80,),
                customTextWidget(text: 'No New Activity',color: Colors.white,
                  size: 42, weight: FontWeight.bold,),
                SizedBox(height: 23,),
                customTextWidget(text: 'It seems everything went well and '
                    'your\n app is ready to work with you',color: Colors
                    .white, align: TextAlign.center,
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
