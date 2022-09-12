import 'package:flutter/material.dart';

class food_payment_type extends StatelessWidget {
  final String text;
  const food_payment_type({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 5,backgroundColor: Color(0xff7F8192),),
        SizedBox(width: 8,),
        Text(text,style: TextStyle(color:
        Color(0xff7F8192), fontSize: 12, fontWeight: FontWeight
            .w500),),
      ],
    );
  }
}

class Currency{
  final String image;
  final String title;
  final String desc;
  Currency({
    required this.image,
    required this.title,
    required this.desc,
  });

}
List<Currency> money = [
  Currency(
    image: 'assets/images/Euro_currency.png',
    title: '585.00',
    desc: 'EUR Balance',
  ),
  Currency(
    image: 'assets/images/Dollar_currency.png',
    title: '654.00',
    desc: 'USD Balance',
  ),
  Currency(
    image: 'assets/images/Euro_currency.png',
    title: '585.00',
    desc: 'GBP Balance',
  ),
];
class Account{
  final String image;
  final String Title;
  final String desc;
  final String price;
  Account({
    required this.Title,
    required this.desc,
    required this.price,
    required this.image}
      );
}
List<Account> bank_account = [
  Account(
      Title: 'Behance Project',
      price: '\$320',
      image: 'assets/images/behance_balances.png',
      desc: '23rd march 2021'
  ),
  Account(
      Title: 'Uber Monthly',
      price: '\$650',
      image: 'assets/images/uber_balance.png',
      desc: '04th february 2021'
  ),
  Account(
      Title: 'ATM Withdraws',
      price: '\$330',
      image: 'assets/images/ATM withdraws_balances.png',
      desc: 'BDT ACCOUNT'
  ),
  Account(
      Title: 'Transfer Money',
      price: '\$100',
      image: 'assets/images/Transfer_money_balance.png',
      desc: 'INR ACCOUNT'
  ),
];