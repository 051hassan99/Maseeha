import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'patient_login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PatientSignup extends StatefulWidget {
  @override
  _PatientSignupState createState() => _PatientSignupState();
}

class _PatientSignupState extends State<PatientSignup> {
  final auth = FirebaseAuth.instance;
  User user;
  String name;
  String email;
  String address;
  String password;
  String confirmPass;
  Timer timer;
  var varified;

  void sendVerificationEmail() async {
    user = await auth.currentUser;

    await user.sendEmailVerification();
    Fluttertoast.showToast(msg: "email verfication link sent");
  }

  Future <void> verifiedEmail() async {
    user = await auth.currentUser;
    await user.reload();
    varified = await user.emailVerified;


    if (varified) {
      timer.cancel();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PatientLogin()),
      );
    }

    else{
      print('EMAIL NOT VARIFIEDDDDDDDDD');
    }
  }

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              height: (size.height * 2.5) / 10,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      DemoLocalization.of(context).getTranslatedValue('p'),
                      style: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        right: 10,
                        bottom: 80,
                      ),
                      child: LangSelector()),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: (size.height * 7) / 10,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80.0),
                      topRight: Radius.circular(80.0),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                  ),
                  child: Form(
                    key: _formkey,
                    child: ListView(
                      children: [
                        Container(
                          height: size.height / 18,
                          margin: EdgeInsets.symmetric(
                            vertical: size.height / 50,
                          ),
                          child: Center(
                            child: Text(
                              DemoLocalization.of(context)
                                  .getTranslatedValue('stc'),
                              style: GoogleFonts.rajdhani(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width / 9),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(4),
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFBC7C7C7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.account_circle,
                                    size: 25,
                                    color: Color(0xFFBB9B9B9),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: DemoLocalization.of(context)
                                          .getTranslatedValue('efullname'),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return DemoLocalization.of(context)
                                            .getTranslatedValue('namerequired');
                                      }
                                      return null;
                                    },
                                    onSaved: (String value) {
                                      name = value;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width / 9),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(4),
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFBC7C7C7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.email,
                                    size: 25,
                                    color: Color(0xFFBB9B9B9),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: DemoLocalization.of(context)
                                          .getTranslatedValue('eemail'),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return DemoLocalization.of(context)
                                            .getTranslatedValue(
                                                'emailrequired');
                                      }
                                      if (!RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value)) {
                                        return DemoLocalization.of(context)
                                            .getTranslatedValue(
                                                'entervalidemail');
                                      }
                                      return null;
                                    },
                                    onSaved: (String value) {
                                      email = value;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width / 9),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(4),
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFBC7C7C7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.home,
                                    size: 25,
                                    color: Color(0xFFBB9B9B9),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: DemoLocalization.of(context)
                                          .getTranslatedValue('eaddress'),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return DemoLocalization.of(context)
                                            .getTranslatedValue(
                                                'addressrequired');
                                      }
                                      return null;
                                    },
                                    onSaved: (String value) {
                                      address = value;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width / 9),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(4),
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFBC7C7C7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.vpn_key,
                                    size: 25,
                                    color: Color(0xFFBB9B9B9),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: DemoLocalization.of(context)
                                          .getTranslatedValue('epass'),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return DemoLocalization.of(context)
                                            .getTranslatedValue(
                                                'passwordrequired');
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      password = value;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        password = value.trim();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width / 9),
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(4),
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFBC7C7C7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  child: Icon(
                                    Icons.vpn_key,
                                    size: 25,
                                    color: Color(0xFFBB9B9B9),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: DemoLocalization.of(context)
                                          .getTranslatedValue('econfirmpass'),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return DemoLocalization.of(context)
                                            .getTranslatedValue(
                                                'confirmpassrequired');
                                      }

                                      return null;
                                    },
                                    onSaved: (String value) {
                                      confirmPass = value;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        password = value.trim();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                  ),
                                  width: (size.width) / 3,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FlatButton(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      child: Text(
                                        DemoLocalization.of(context)
                                            .getTranslatedValue('signup'),
                                        style: GoogleFonts.rajdhani(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                      onPressed: () {
                                        if (!_formkey.currentState.validate()) {
                                          return;
                                        }
                                        _formkey.currentState.save();

                                        auth
                                            .createUserWithEmailAndPassword(
                                          email: email,
                                          password: password,
                                        )
                                            .then((_) {
                                          sendVerificationEmail();
                                          
                                        });

                                         timer = Timer.periodic(Duration(seconds: 10),
                                              (timer) {
                                                verifiedEmail();
                                              });
                                      }),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10,
                                    right: 20,
                                  ),
                                  width: ((size.width) * 1.5) / 3,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FlatButton(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      child: Text(
                                        DemoLocalization.of(context)
                                            .getTranslatedValue('backtologin'),
                                        style: GoogleFonts.rajdhani(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PatientLogin()),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
