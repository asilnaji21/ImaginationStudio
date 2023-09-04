import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_app/app/routes/route_constants.dart';

import '../../presentaion/widgets/showotpdialoag.dart';
import '../../presentaion/widgets/showsnackbar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  User get user => _auth.currentUser!;

  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();

  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnackBar(context, 'The password provided is too weak.');

        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnackBar(context, 'The account already exists for that email.');

        print('The account already exists for that email.');
      }
      showSnackBar(context, e.message!);
    }
  }

  //reset
  Future<void> sendPasswordResetEmail({
    required String email,
    required BuildContext context,
  }) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      Navigator.of(context).pushReplacementNamed(RouteConstants.mainRoute);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // print('No user found for that email.');

        showSnackBar(context, 'No user found for that email.');
      }
      showSnackBar(context, e.message!);
    }
  }

  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> sendEmailVerification(BuildContext context) async {
    User? user = _auth.currentUser;
    await user?.sendEmailVerification();
    showSnackBar(context, 'Verification email sent. Please check your inbox.');
  }

  // EMAIL LOGIN
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!user.emailVerified) {
        await sendEmailVerification(context);
        showSnackBar(context, 'Email verification sent!');
      } else {
        Navigator.of(context).pushNamed(RouteConstants.mainRoute);
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

// Logouttttttttttttttttttttttttttt
  Future<void> logout(BuildContext context) async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, 'Error logging out: ${e.message}');

      print('Error logging out: $e');
    }
  }
}
