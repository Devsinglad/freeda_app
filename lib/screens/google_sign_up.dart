import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> currentUser() async {
  final GoogleSignInAccount? account = await googleSignIn.signIn();
  final GoogleSignInAuthentication? authentication =
  await account?.authentication;

  final OAuthCredential credential = GoogleAuthProvider.credential(
      idToken: authentication?.idToken,
      accessToken: authentication?.accessToken);

  final UserCredential authResult =
  await _auth.signInWithCredential(credential);
  final User? user = authResult.user;

  return user;
}