import 'package:flutter/material.dart';
import 'package:fyp/Patient/patient_login.dart';
import 'package:fyp/Doctor/doctor_login.dart';
import 'package:fyp/Caretaker/caretaker_login.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              height: (size.height * 3) / 10,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      DemoLocalization.of(context).getTranslatedValue('title'),
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
                        height: size.height * 0.15,
                        child: Center(
                          child: Text(
                            DemoLocalization.of(context)
                                .getTranslatedValue('category'),
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
                            EdgeInsets.symmetric(horizontal: size.width / 5),
                        child: Container(
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(8),
                          width: 270,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('p'),
                                style: GoogleFonts.rajdhani(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PatientLogin()),
                                );
                              }),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width / 5),
                        child: Container(
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(8),
                          width: 270,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('d'),
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
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width / 5),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(8),
                          width: 270,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Text(
                                DemoLocalization.of(context)
                                    .getTranslatedValue('c'),
                                style: GoogleFonts.rajdhani(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CaretakerLogin()),
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
