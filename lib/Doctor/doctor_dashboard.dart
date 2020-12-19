import 'package:flutter/material.dart';
import 'package:fyp/Doctor/right_hand_toDoctor.dart';
import 'package:fyp/Patient/scheduleAppointment.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'doctor_drawer.dart';

class DoctorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _mainColor = Theme.of(context).primaryColor;
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(
              right: size.width / 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: size.width * 0.28,
                  child: Center(
                    child: Text(
                      DemoLocalization.of(context).getTranslatedValue('title'),
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  left: size.width / 30,
                  right: size.width / 30,
                ),
                child: LangSelector()),
          ],
        ),
        drawer: DoctorDrawer(),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: size.height / 35,
                    bottom: size.width / 30,
                  ),
                  child: Text(
                    DemoLocalization.of(context)
                        .getTranslatedValue('doctordashboard'),
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: _buildCard(
                  icon: Icon(
                    FontAwesome.calendar,
                    size: 30,
                    color: _mainColor,
                  ),
                  text: FlatButton(
                    child: Text(
                      DemoLocalization.of(context)
                          .getTranslatedValue('ManageAppointment'),
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScheduleAppointment()),
                      );
                    },
                  ),
                  context: context,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: _buildCard(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                    color: _mainColor,
                  ),
                  text: FlatButton(
                      child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('ViewPatients'),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {}),
                  context: context,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: _buildCard(
                  icon: Icon(
                    Icons.list,
                    size: 30,
                    color: _mainColor,
                  ),
                  text: FlatButton(
                    child: Text(
                      DemoLocalization.of(context)
                          .getTranslatedValue('DoctorAssistant'),
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RightHandToDoctor()),
                      );
                    },
                  ),
                  context: context,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: _buildCard(
                  icon: Icon(
                    Entypo.video_camera,
                    size: 30,
                    color: _mainColor,
                  ),
                  text: FlatButton(
                      child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('TeleMedicine'),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {}),
                  context: context,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container _buildCard(
    {final Icon icon, final FlatButton text, BuildContext context}) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: size.height / 4.8,
    width: size.width / 1.6,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    padding: EdgeInsets.all(5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: size.height / 11,
          width: size.width / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 4,
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: icon,
        ),
        text,
      ],
    ),
  );
}
