import 'package:flutter/material.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class NewAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(
          height: size.height / 15,
          margin: EdgeInsets.symmetric(
            vertical: size.height / 35,
          ),
          child: Center(
            child: Text(
              DemoLocalization.of(context).getTranslatedValue('fillform'),
              style: GoogleFonts.rajdhani(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 9),
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
                    onChanged: (String value) {},
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 9),
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
                          .getTranslatedValue('age'),
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
                    onChanged: (String value) {},
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 9),
          child: Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(4),
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFBC7C7C7),
                width: 2,
              ),
            ),
            child: Expanded(
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText:
                      DemoLocalization.of(context).getTranslatedValue('diseasedescription'),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                ),
                onChanged: (value) {},
              ),
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: size.height / 30,
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
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
                            .getTranslatedValue('signin'),
                        style: GoogleFonts.rajdhani(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      onPressed: () async {}),
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
                            .getTranslatedValue('newmember'),
                        style: GoogleFonts.rajdhani(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
