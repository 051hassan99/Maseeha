import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AppUserData extends ChangeNotifier {
  String name;
  String email;
  String address;
  String password;
  String confirmPass;
  bool loading;

  AppUserData() {
    loading = false;
  }

  void toggleLoading() {
    loading = !loading;
    notifyListeners();
  }

  void sendVerificationEmail() async {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    await user.sendEmailVerification();
    //Fluttertoast.showToast(msg: "email verfication link sent");
  }

  Future<bool> registerUser() async {
    final auth = FirebaseAuth.instance;
    try {
      toggleLoading();
      await auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((_) {
        sendVerificationEmail();
      });
      toggleLoading();
      return true;
    } catch (err) {
      print(err.toString());
    }
    toggleLoading();
    return false;
  }
}
