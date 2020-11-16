import 'package:flutter/material.dart';
import 'package:fyp/Caretaker/caretaker_signup.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'patient_dashboard.dart';

class CaretakerLogin extends StatefulWidget {
  @override
  _CaretakerLoginState createState() => _CaretakerLoginState();
}

class _CaretakerLoginState extends State<CaretakerLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              height: 190,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      DemoLocalization.of(context).getTranslatedValue('c'),
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Center(
                          child: Text(
                            DemoLocalization.of(context)
                                .getTranslatedValue('ltc'),
                            style: GoogleFonts.rajdhani(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(8),
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
                                Icons.account_circle,
                                size: 25,
                                color: Color(0xFFBB9B9B9),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: DemoLocalization.of(context)
                                      .getTranslatedValue('euser'),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(8),
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
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: DemoLocalization.of(context)
                                      .getTranslatedValue('epass'),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 120.0,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                          ),
                          width: 100,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('signin'),
                                style: GoogleFonts.rajdhani(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PatientDashboard()),
                                );
                              */
                              }),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 100,
                        ),
                        child: Container(
                          width: 100,
                          margin: EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('newmember'),
                                style: GoogleFonts.rajdhani(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CaretakerSignup()),
                                );
                              }),
                        ),
                      ),
                    ],
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
