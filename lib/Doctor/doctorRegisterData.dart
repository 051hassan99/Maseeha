import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
class DoctorRegisterData extends ChangeNotifier{

  String docName;
  String docEmail;
  String hospital;
  String pmdc;
  String specialiozation;
  String docAddress;
  String docPassword;
  String docConfirmPass;
  bool loading;
  bool securetext = true;

DoctorRegisterData(){
  loading = false;  
  }

void secureText(){
    securetext =!securetext;
    notifyListeners();
  }
  
  void toggleLoading() {
    loading = !loading;
    notifyListeners();
  }

 void sendVerificationEmail() async {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    await user.sendEmailVerification();

  }

  Future<bool> registerUser() async {
    final auth = FirebaseAuth.instance;
    try {
      toggleLoading();
      await auth
          .createUserWithEmailAndPassword(
        email: docEmail,
        password: docPassword,
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

