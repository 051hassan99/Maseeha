import 'package:flutter/material.dart';
import 'package:fyp/Patient/main_drawer.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import './main_drawer.dart';

class PatientDashboard extends StatefulWidget {
  @override
  _PatientDashboardState createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PatientDashboard> {
  var _mainColor = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      drawer: MainDrawer(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: Text(
                  DemoLocalization.of(context)
                      .getTranslatedValue('patientdashboard'),
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCard(
                icon: Icon(
                  Icons.schedule,
                  color: _mainColor,
                ),
                text: Text(
                  DemoLocalization.of(context)
                      .getTranslatedValue('ScheduleAppointment'),
                  style: TextStyle(fontSize: 12),
                ),
              ),
              _buildCard(
                icon: Icon(
                  FontAwesome.location_arrow,
                  color: _mainColor,
                ),
                text: Text(
                  DemoLocalization.of(context)
                      .getTranslatedValue('FindLocation'),
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCard(
                icon: Icon(
                  Icons.notification_important,
                  color: _mainColor,
                ),
                text: Text(
                  DemoLocalization.of(context)
                      .getTranslatedValue('MedicineAlerts'),
                  style: TextStyle(fontSize: 12),
                ),
              ),
              _buildCard(
                icon: Icon(
                  Icons.call,
                  color: _mainColor,
                ),
                text: Text(
                  DemoLocalization.of(context)
                      .getTranslatedValue('TeleMedicine'),
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCard(
                icon: Icon(
                  FontAwesome.shopping_cart,
                  color: _mainColor,
                ),
                text: Text(
                  DemoLocalization.of(context)
                      .getTranslatedValue('BuyDrugsOnline'),
                  style: TextStyle(fontSize: 12),
                ),
              ),
              _buildCard(
                icon: Icon(
                  MaterialIcons.attach_money,
                  color: _mainColor,
                ),
                text: Text(
                  DemoLocalization.of(context)
                      .getTranslatedValue('RequestCaretaker'),
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildCard({final Icon icon, final Text text}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 157,
      width: 200,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 2,
                color: _mainColor,
              ),
            ),
            child: icon,
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: text,
          ),
          //SizedBox(height: 20),
          /*Text(
            "Next Difficulty Estimated",
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            "618,404	\t \t BTC.com",
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 10),
          Container(
            width: 120,
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "7048 BTC",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),*/
          //color: _mainColor,
          //elevation: 10,
          //shape: RoundedRectangleBorder(
          //  borderRadius: BorderRadius.circular(12),
          //),
          // ),
          //s),
        ],
      ),
    );
  }
}
