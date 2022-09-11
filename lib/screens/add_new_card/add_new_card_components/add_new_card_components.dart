import 'package:flutter/material.dart';

import '../../../reusable_widget/constants.dart';
import '../../../reusable_widget/reusable_widgets.dart';
// import 'package:freeda_app/reusable_widget/reusable_widgets.dart';
// import 'package:freeda_app/reusable_widget/constants.dart';

class buildCardForm extends StatelessWidget {
  const buildCardForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          customTextWidget(text: 'Card Number',
            color: kTextColor,weight: FontWeight.w600,size: 12,),
          SizedBox(height: 6,),
          TextFormField(

          )
        ],
      ),
    );
  }
}