import 'dart:io';

import 'package:device_preview/device_preview.dart';

import 'package:counter_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]).then((_) {
  //   return
  //   runApp(
  //     DevicePreview(
  //       enabled: true,
  //       builder: (context) {
  //         return MyApp();
  //       },
  //     ),
  //   );
  // });
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) {
        return MyApp();
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static of(BuildContext context) {
    return context.findAncestorStateOfType<_MyAppState>();
  }
}

class _MyAppState extends State<MyApp> {
  var brightness = Brightness.dark;
  void toogleBrrightness() {
    //  brightness is dark
    // if (brightness == Brightness.dark) {
    //   // light
    //   setState(() {
    //     brightness = Brightness.light;
    //   });
    // }
    // //light
    // else {
    //   // dark
    //   setState(() {
    //     brightness = Brightness.dark;
    //   });
    // }
    // ternaruy operator
    setState(() {
      brightness =
          brightness == Brightness.dark ? Brightness.light : Brightness.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplashScreen(
        fn: toogleBrrightness,
      ),
      theme: ThemeData(
          textTheme: GoogleFonts.cedarvilleCursiveTextTheme().copyWith(
            displayLarge: GoogleFonts.cedarvilleCursive(
              color: Colors.red,
              fontSize: 25,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            brightness: brightness,
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
