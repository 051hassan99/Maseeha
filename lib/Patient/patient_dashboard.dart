import 'package:flutter/material.dart';
import 'package:fyp/Patient/main_drawer.dart';
import 'package:fyp/Patient/patient_login.dart';
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
  
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     var _mainColor = Theme.of(context).primaryColor; 
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
                  top: size.height/35,
                  bottom: size.width/30,
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
          
          FittedBox(
            fit: BoxFit.contain,
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 _buildCard(
                    icon: Icon(
                      Icons.schedule,
                      size: 30,
                      color: _mainColor,
                    ),
                    text: FlatButton(
                        child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('ScheduleAppointment'),
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                       onPressed: ()
                        {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                            PatientLogin()),
                            ); 
                      },
                    ),
                  ),
                        
                     
            
                _buildCard(
                    icon: Icon(
                      FontAwesome.location_arrow,
                      size: 30,
                      color: _mainColor,
                    ),
                    text: FlatButton(
                        child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('FindLocation'),
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        
                      ),
                       onPressed: ()
                        {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                            PatientLogin()),
                            ); 
                      },
                    ),
                  ),

                
              ],
            ),
          ),
          SizedBox(height: size.height/50),
          FittedBox(
            fit: BoxFit.contain,
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCard(
                    icon: Icon(
                      Icons.notification_important,
                      size: 30,
                      color: _mainColor,
                    ),
                    text: FlatButton(
                        child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('MedicineAlerts'),
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                       onPressed: ()
                        {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                            PatientLogin()),
                            ); 
                      },
                    ),
                ),
                 _buildCard(
                    icon: Icon(
                      Icons.call,
                      size: 30,
                      color: _mainColor,
                    ),
                    text: FlatButton(
                        child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('TeleMedicine'),
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                       onPressed: ()
                        {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                            PatientLogin()),
                            ); 
                      },
                    ),
                 ),
              ],
            ),
          ),
          SizedBox(height: size.height/50),

          FittedBox(
            fit: BoxFit.contain,
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               _buildCard(
                    icon: Icon(
                      FontAwesome.shopping_cart,
                      size: 30,
                      color: _mainColor,
                    ),
                    text: FlatButton(
                        child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('BuyDrugsOnline'),
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                       onPressed: ()
                        {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                            PatientLogin()),
                            ); 
                      },
                    ),
                ),
               _buildCard(
                    icon: Icon(
                      MaterialIcons.attach_money,
                      size: 30,
                      color: _mainColor,
                    ),
                   text: FlatButton(
                        child: Text(
                        DemoLocalization.of(context)
                            .getTranslatedValue('RequestCaretaker'),
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                       onPressed: ()
                        {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                            PatientLogin()),
                            ); 
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildCard({final Icon icon, final FlatButton text}) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height/3.3,
      width: size.width/1.6,
    
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height/11,
            width: size.width/5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 4,
                color: Theme.of(context).primaryColor,
              ),
            ),
            child: icon,
          ),
              Padding(
                padding: EdgeInsets.all(
                size.width/30),
                child: text,
              ),
       
        ],
      ),
    );
  }
}
