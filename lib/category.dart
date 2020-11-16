import 'package:flutter/material.dart';
import 'package:fyp/Patient/patient_login.dart';
import 'package:fyp/Doctor/doctor_login.dart';
import 'package:fyp/Caretaker/caretaker_login.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            DefaultTextStyle(
              child: Container(
                height: 300,
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 15,
                          ),
                          child: LangSelector(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          DemoLocalization.of(context)
                              .getTranslatedValue('title'),
                          style: GoogleFonts.rajdhani(
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          DemoLocalization.of(context).getTranslatedValue(
                            'description',
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 240, 1),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(8),
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
                    Container(
                      margin: EdgeInsets.all(20),
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
                    Container(
                      margin: EdgeInsets.all(20),
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
                    Container(
                      margin: EdgeInsets.all(20),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
