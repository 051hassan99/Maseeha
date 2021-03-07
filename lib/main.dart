import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fyp/Caretaker/caretakerRegister.dart';
import 'package:fyp/Caretaker/loginCaretakerData.dart';
import 'package:fyp/Doctor/bmiContainer_Data.dart';
import 'package:fyp/Doctor/bmrContainerData.dart';
import 'package:fyp/Doctor/upeeContainerData.dart';
import 'package:fyp/Patient/AppUserData.dart';
import 'package:fyp/Patient/loginPatientData.dart';
import 'package:fyp/Doctor/doctorRegisterData.dart';
import 'package:fyp/localization/demo_localization.dart';
import 'package:fyp/splashScreen.dart';
import 'package:provider/provider.dart';
import 'DataHandler/AppData.dart';
import 'Doctor/loginDoctorData.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fyp/Patient/newAppointmentdata.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var bgcolor = Colors.blue;
  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppUserData(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginPatientData(),
        ),
        ChangeNotifierProvider(
          create: (context) => DoctorRegisterData(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginDoctorData(),
        ),
        ChangeNotifierProvider(
          create: (context) => CaretakerRegisterData(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginCaretakerData(),
        ),
        ChangeNotifierProvider(
          create: (context) => NewAppointmentData(),
        ),
        ChangeNotifierProvider(
          create: (context) => BMIContainerData(),
        ),
        ChangeNotifierProvider(
          create: (context) => UPEEContainerData(),
        ),
        ChangeNotifierProvider(
          create: (context) => BMRContainerData(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppData(),
        ),
      ],
      child: MaterialApp(
        locale: _locale,
        supportedLocales: [Locale('en', 'US'), Locale('ur', 'PK')],
        localizationsDelegates: [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          for (var locale in supportedLocales) {
            if (locale.languageCode == deviceLocale.languageCode &&
                locale.countryCode == deviceLocale.countryCode) {
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
        )),
      ),
    );
  }
}
