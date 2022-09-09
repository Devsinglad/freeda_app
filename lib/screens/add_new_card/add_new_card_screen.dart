import 'package:flutter/material.dart';
import '../../reusable_widget/constants.dart';
import '../../reusable_widget/reusable_widgets.dart';
import '../../screens/transferred_screen/transferred_screen_components/transferred_screen_components.dart';
import 'add_new_card_components/add_new_card_components.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  bool SwitchIsActive = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left:45,top:58,right:40,),
          child: Column(
            children: [
              topRow(),
              SizedBox(height: 32,),
              customTextWidget(text: 'Add New Card',color: kTextColor,size:
              46,weight: FontWeight.bold,),
              SizedBox(height: 22,),
              buildPaymentCard(),
              SizedBox(height: 23,),
              customTextWidget(text: 'Enter the details to add a new card',
                  color: kTextColor,weight: FontWeight.w500,size: 18,),
               SizedBox(height: 48,),
               buildCardForm(isToggled: SwitchIsActive, isClicked: (value) {
                 setState(() {
                 SwitchIsActive = value;
               }); },),


            ],
          ),
        ),
      ),
    );
  }
}


