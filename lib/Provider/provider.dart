import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProviderDB extends ChangeNotifier {
  String? fullname;
  int? initAmount;
  String? email;
  String? password;
  String? phoneNumber;
  String? country;
  TextEditingController amountController = TextEditingController();

  Future<void> firebaseUserInfo() async {
    final firebaseUser = FirebaseAuth.instance.currentUser?.email;
    var name = await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser)
        .get()
        .then((value) {
      fullname = value['firstname'];
      //_nameController.text = value['firstname'];
      initAmount = value['balance'];
      email = value['email'];
      notifyListeners();
      //   setState(() {});
      print(value.data());
    });
    notifyListeners();
  }

  Future<void> firebasePhoneNumber() async {
    final firebaseUserPhone = FirebaseAuth.instance.currentUser?.email;
    var userPhone = await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUserPhone)
        .get()
        .then((value) {
      phoneNumber = value['phone number'];
      notifyListeners();
      notifyListeners();
      print(value.data());
    });
  }

  Future<void> sendmoney() async {
    var sender = FirebaseAuth.instance.currentUser!.email;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(sender)
        .get()
        .then((value) async {
      int balance = value['balance'];
      notifyListeners();
      int amount = int.parse(balance.toString()) -
          int.parse(amountController.text.toString());
      await FirebaseFirestore.instance
          .collection('users')
          .doc(sender)
          .update({'balance': amount}).then((value) async {
        var receiverBalance;
        await FirebaseFirestore.instance
            .collection('users')
            .doc('singlad@gmail.com')
            .get()
            .then((value) {
          receiverBalance = value['balance'];
          notifyListeners();
        }).then((value) async {
          int amount = int.parse(receiverBalance.toString()) +
              int.parse(amountController.text.toString());
          print(amount);
          await FirebaseFirestore.instance
              .collection('users')
              .doc('uchenna@gmail.com')
              .update({'balance': amount});
        });
        print('transfer succesfull');
      });
    });
  }
}
