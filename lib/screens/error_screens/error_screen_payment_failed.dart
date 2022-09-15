import 'package:flutter/material.dart';

import '../../widgets/constants.dart';
import '../../widgets/reusable_widgets.dart';

class PaymentFailed extends StatelessWidget {
  const PaymentFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                        Positioned(bottom: -65.54,left: -56,
                            child: Image.asset('assets/images/left_payment_access_error.png')),
                        Positioned(
                          left:58.79,bottom: -43.46,
                          child: Image.asset
                            ('assets/images/right_payment_access_error.png'),
                        ),
                        SizedBox(width: 211,height: 211,
                            child: Image.asset('assets/images/img1_payment_access_error.png')),
                      ]),
                ),
                SizedBox(height: 80,),
                customTextWidget(text: 'Payment Failed',color: kTextColor,
                  size: 42, weight: FontWeight.bold,),
                SizedBox(height: 23,),
                customTextWidget(text: 'Hmm. Looks like your location access '
                    'is\n turned off.  ',color: kTextColor, align:
                TextAlign.center,
                  size: 18, weight: FontWeight.w400,),
                SizedBox(height: 67,),
                SizedBox(width: 185, height: 56,
                  child: ElevatedButton(onPressed: (){},
                    child: customTextWidget(text: 'Back',color: Colors.white,
                      weight: FontWeight.w700,size: 18,),
                    style: ElevatedButton.styleFrom(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      primary: kPrimaryColor,
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
