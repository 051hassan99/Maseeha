import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

class DoctorRegisterData extends ChangeNotifier {
  int id;
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
  String result;

  DoctorRegisterData() {
    loading = false;
  }
  Future getData(url) async {
    http.Response response = await http.get(url);
    return response.body;
  }

  void secureText() {
    securetext = !securetext;
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

  Future<bool> appConnect() async {
    var data =
        await getData('http://10.0.2.2:5000/?pmdc=$pmdc&docName=$docName');
    // sleep(const Duration(seconds: 5));
    var decodedData = jsonDecode(data);
    if (decodedData['query'] == 'true') {
      return true;
    } else {
      return false;
    }
  }

  //DATABASE
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': docName,
    };
    return map;
  }

  DoctorRegisterData.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    docName = map['name'];
  }
}
