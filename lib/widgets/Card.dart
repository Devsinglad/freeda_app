import 'package:flutter/material.dart';
import 'package:freeda_app/Provider/provider.dart';
import 'package:freeda_app/widgets/customButton.dart';
import 'package:freeda_app/widgets/reuseablewidget.dart';
import 'package:provider/provider.dart';

class CardItems extends StatelessWidget {
  CardItems({
    Key? key,
  }) : super(key: key);
  // String? validateAmount(String? formEmail) {
  //   if (formEmail == null || formEmail.isEmpty) {
  //     return 'Amount is required.';
  //   }
  //   return null;
  // }

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ProviderDB>(context);
    return CustomButton(
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              'YOU ARE SENDING',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Divider(
              color: Color(0xffD8DEF6),
              thickness: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'USD',
                  style: TextStyle(
                    color: Color(0xff7F8192),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  height: 30,
                  width: 200,
                  color: Colors.red,
                  child: Form(
                    key: formkey,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      controller: data.amountController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        prefixText: " \$ ",
                        prefixStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Color(0xff7F8192),
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 14),
            Divider(
              color: Color(0xffD8DEF6),
              thickness: 3,
            ),
          ],
        ),
      ),
      243,
      332,
      Color(0xfff5F6FA),
      10,
      Colors.transparent,
      0,
      0,
    );
  }
}
