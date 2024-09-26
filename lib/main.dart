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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = Brightness.light;
    return MaterialApp(
      home: const MySplashScreen(),
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
  // function
  // if (light) dark else (dark) light
}
