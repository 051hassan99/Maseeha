import 'package:flutter/material.dart';
import 'package:fyp/Patient/patient_signup.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'patient_dashboard.dart';

class PatientLogin extends StatefulWidget {
  @override
  _PatientLoginState createState() => _PatientLoginState();
}

class _PatientLoginState extends State<PatientLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            backgroundColor:Theme.of(context).primaryColor,

        body: Column(

                children:[
                    Container(
                  
                      height: 150,
                      color: Theme.of(context).primaryColor,
                      child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  
                                  margin: EdgeInsets.only(
                                   
                                   
                                    right: 20,
                                    
                                  ),
                                 
                                
                                  child: Text(DemoLocalization.of(context).getTranslatedValue('p'),
                                      style: 
                                        GoogleFonts.rajdhani(
                                            fontWeight:FontWeight.bold,
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
                          )
                        ),
                    child: Padding(
                              padding: 
                                        const EdgeInsets.symmetric(
                                          vertical: 30.0,
                                          
                                       
                                        ),
                              child: ListView(
                            children: [
                              Container(
                                    margin: EdgeInsets.all(20),
                                
                                    child: Center(
                                      child: Text(DemoLocalization.of(context).getTranslatedValue('ltc'),
                                      style: 
                                          GoogleFonts.rajdhani(
                                            fontWeight:FontWeight.bold,
                                            fontSize: 24,
                                            color: Theme.of(context).primaryColor,
                                            ),
                                          ),
                                    ),
                                      ),

                                      Container(
                                      
                                        width: double.infinity,
                                        child: Row(
                                          children:[
                                            Container(
                                                          
                                                    width: 200,
                                                    decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          borderRadius: BorderRadius.circular(50),
                                                          ),
                                                        child:SignInButton(
                                                            
                                                            Buttons.Google,
                                                            
                                                            text: DemoLocalization.of(context).getTranslatedValue('gmailtext'),
                                                            
                                                            onPressed: () {},
                                                            
                                              ),
                                                ),

                                    Container(
                                                          
                                                    width: 200,
                                                    decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          borderRadius: BorderRadius.circular(50),
                                                          ),
                                                        child:SignInButton(
                                                            
                                                            Buttons.FacebookNew, 
                                                            text: DemoLocalization.of(context).getTranslatedValue('fbtext'),
                                                            onPressed: () {},
                                                            
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
                                                    children:[
                                                      Container(
                                                        width: 60,
                                                        child: Icon(Icons.account_circle,
                                                        size: 25,
                                                        color: Color(0xFFBB9B9B9),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: DemoLocalization.of(context).getTranslatedValue('euser'),
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
                                                  children:[
                                                    Container(
                                                      width: 60,
                                                      child: Icon(Icons.vpn_key,
                                                      size: 25,
                                                      color: Color(0xFFBB9B9B9),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                          hintText: DemoLocalization.of(context).getTranslatedValue('epass'),
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
                                          bottom: 10,
                                        ),
                                                
                                                width: 100,
                                                decoration: BoxDecoration(
                                                      color: Theme.of(context).primaryColor,
                                                      borderRadius: BorderRadius.circular(80),
                                                      ),
                                        child: FlatButton(
                                                  splashColor: Colors.transparent,  
                                                  highlightColor: Colors.transparent,
                                                  child: Text(DemoLocalization.of(context).getTranslatedValue('signin'),
                                                  style:  GoogleFonts.rajdhani(
                                                          fontWeight:FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.white),
                                                      ),
                                                    
                                          
                                          onPressed: ()
                                            {
                                                Navigator.push(context,
                                                MaterialPageRoute(builder: (context)=>
                                                PatientDashboard()),
                                                );        
                                          }

                                    ),
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
                                          bottom: 10,
                                          ),
                                                
                                                           
                                                decoration: BoxDecoration(
                                                     color: Theme.of(context).primaryColor, 
                                                      borderRadius: BorderRadius.circular(50),
                                                      ),
                                                  child: FlatButton(
                                                  splashColor: Colors.transparent,  
                                                  highlightColor: Colors.transparent,
                                                  child: Text(DemoLocalization.of(context).getTranslatedValue('newmember'),
                                                  style:  GoogleFonts.rajdhani(
                                                          fontWeight:FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.white),
                                                      ),
                                                    
                                          
                                          onPressed: ()
                                            {
                                                Navigator.push(context,
                                                MaterialPageRoute(builder: (context)=>
                                                PatientSignup()),
                                                );        
                                          }

                                      ),
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