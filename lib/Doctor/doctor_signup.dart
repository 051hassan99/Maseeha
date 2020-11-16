import 'package:flutter/material.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'doctor_login.dart';

class DoctorSignup extends StatefulWidget {
  @override
  _DoctorSignupState createState() => _DoctorSignupState();
}

class _DoctorSignupState extends State<DoctorSignup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              height: 110,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    child: Text(
                      DemoLocalization.of(context).getTranslatedValue('d'),
                      style: GoogleFonts.rajdhani(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        right: 10,
                        bottom: 50,
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
                    vertical: 30.0,
                  ),
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
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
                      Container(
                        margin: EdgeInsets.all(5),
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
                                Icons.account_circle,
                                size: 25,
                                color: Color(0xFFBB9B9B9),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: DemoLocalization.of(context)
                                      .getTranslatedValue('efullname'),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
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
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: DemoLocalization.of(context)
                                      .getTranslatedValue('eemail'),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
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
                                Icons.perm_identity,
                                size: 25,
                                color: Color(0xFFBB9B9B9),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: DemoLocalization.of(context)
                                      .getTranslatedValue('EnterYourPmdcNo'),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
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
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: DemoLocalization.of(context)
                                      .getTranslatedValue('enewpass'),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
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
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: DemoLocalization.of(context)
                                      .getTranslatedValue('econfirmpass'),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              bottom: 10,
                              left: 20,
                              right: 20,
                            ),
                            width: 130,
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
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                onPressed: () {}),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              bottom: 10,
                              left: 15,
                            ),
                            width: 200,
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
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DoctorLogin()),
                                  );
                                }),
                          ),
                        ],
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
