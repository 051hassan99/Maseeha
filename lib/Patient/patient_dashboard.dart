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
                    right: size.width/30,
                   
                   
                  ),
                  
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                              Container(
                                width: size.width*0.28,
                                
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
              left:size.width/30,
              right: size.width/30,
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
                  "Patients Feature",
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
                  Icons.calendar_today,
                  color: _mainColor,
                ),
              ),
              _buildCard(
                icon: Icon(
                  FontAwesome.university,
                  color: _mainColor,
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
                  FontAwesome.transgender,
                  color: _mainColor,
                ),
              ),
              _buildCard(
                icon: Icon(
                  MaterialIcons.attach_money,
                  color: _mainColor,
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
                  FontAwesome.transgender,
                  color: _mainColor,
                ),
              ),
              _buildCard(
                icon: Icon(
                  MaterialIcons.attach_money,
                  color: _mainColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildCard({final Icon icon}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 210,
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
          SizedBox(height: 20),
          Text(
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
              ),
              color: _mainColor,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
