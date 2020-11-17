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
     Size size = MediaQuery.of(context).size;
    return SafeArea(
          child: Scaffold(
          backgroundColor:Theme.of(context).primaryColor,

        body: Column(

                children:[
                    Container(
                  
                      height: (size.height * 2.5)/10,
                      color: Theme.of(context).primaryColor,
                      child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
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
                        height: (size.height * 7)/10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(80.0),
                            topRight: Radius.circular(80.0),
                         
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
                                    height: size.height/ 15,
                                    margin: EdgeInsets.symmetric(
                                                vertical:size.height/35,
                                                ),
                                
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

                                     
                                    FittedBox(
                                    
                                    fit: BoxFit.contain,
                
                                        child: Row(
                                          children:[
                                            Container(
                                               
                                                    margin: EdgeInsets.only(
                                                      left:20,
                                                      right: 10,
                                                      bottom: 10,
      
                                                    ),      
                                                    width: size.width/2,
                                                    decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          borderRadius: BorderRadius.circular(50),
                                                          ),
                                                        child: FittedBox(
                                                          fit: BoxFit.contain,
                                                          child: SignInButton(
                                                              
                                                              Buttons.Google,
                                                              
                                                              text: DemoLocalization.of(context).getTranslatedValue('gmailtext'),
                                                              
                                                              onPressed: () {},
                                                              
                                              ),
                                                        ),
                                                ),

                                    Container(
                                                   
                                                     margin: EdgeInsets.only(
                                                       
                                                       left: 10,
                                                      right:20,
                                                      bottom: 10,
                                                    ),     
                                                    width: size.width/2,
                                                    decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          borderRadius: BorderRadius.circular(50),
                                                          ),
                                                        child:FittedBox(
                                                            fit: BoxFit.contain,
                                                                                                                  child: SignInButton(
                                                              
                                                              Buttons.FacebookNew, 
                                                              text: DemoLocalization.of(context).getTranslatedValue('fbtext'),
                                                              onPressed: () {},
                                                              
                                                    ),
                                                        ),
                                                ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                          horizontal: size.width/9
                                    ) ,
                                        child: Container(
                                               margin: EdgeInsets.symmetric(
                                                vertical:size.height/40,
                                                ),
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
                                      ),

                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: size.width/9
                                              ) ,
                                              child: Container(
                                              margin: EdgeInsets.symmetric(
                                                vertical:size.height/40,
                                                ),
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
                                      ),

                FittedBox(
                                    fit: BoxFit.contain,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        vertical: size.height/40,
                                      ),
                                      child: Row(
                                      children: [
                                      Container(
                                      margin: EdgeInsets.only(
                                        
                                      
                                        left: 20,
                                        
                                      ),
                                              
                                      width: (size.width)/3,
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
                                                        fontSize: 18,
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

                                  Container(
                                      margin: EdgeInsets.only(
                                        
                                        left: 10,
                                        right: 20,
                                        ),
                                          
                                          width: ((size.width)*1.5)/3,
                                          decoration: BoxDecoration(
                                                color: Theme.of(context).primaryColor,
                                                borderRadius: BorderRadius.circular(80),
                                                ),
                                      child: FlatButton(
                                            splashColor: Colors.transparent,  
                                            highlightColor: Colors.transparent,
                                            child: Text(DemoLocalization.of(context).getTranslatedValue('newmember'),
                                            style:  GoogleFonts.rajdhani(
                                                    fontWeight:FontWeight.bold,
                                                    fontSize: 18,
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
                                        
                                        ],
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