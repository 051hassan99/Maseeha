import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fyp/lang_selector.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category.dart';

void main() {
  runApp(MyApp());
}
//abc
class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale locale){
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var bgcolor =  Color(0xFFFF5252);
  Locale _locale;

  void setLocale(Locale locale){
    setState(() {
      _locale = locale;
    });
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      locale: _locale,

      supportedLocales: [
        Locale('en','US'),
        Locale('ur','PK')
      ],

      localizationsDelegates: [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],

      localeResolutionCallback: (deviceLocale, supportedLocales){
        for (var locale in supportedLocales){
          if(locale.languageCode == deviceLocale.languageCode && locale.countryCode == deviceLocale.countryCode){
            return deviceLocale;
          }
          
        }
        return supportedLocales.first; 
      },
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: bgcolor,
      ),
      home: Scaffold(
        body: Container(
          child: SplashScreen(),
        )
      ), 
      
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                  Container(
                  
                  height: 230,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            child: LangSelector(),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Column(

                          children: [
                              Text(DemoLocalization.of(context).getTranslatedValue('title'),
                              style: 
                                GoogleFonts.rajdhani(
                                  fontWeight:FontWeight.bold,
                                  fontSize: 60,
                                  color: Colors.white),
                              ),
                              Text(DemoLocalization.of(context).getTranslatedValue('description',),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                            ],
                          ),
                      ),
                      ],
                   ),
                  ),

            Container(
                height: 250,
                width: double.infinity,
                child: new Image.asset(
            'assets/images/doc.jpg'),
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
                        child: Text(DemoLocalization.of(context).getTranslatedValue('btn'),
                        style:  GoogleFonts.rajdhani(
                                fontWeight:FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                            ),
                          
                
                        onPressed: ()
                          {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>
                              Category()),
                              );        
                        }

              ),
            ),
          ],
        ),
        
      ),
    );
  }
}

