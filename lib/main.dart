import 'package:fitness_app/consts/consts.dart';
import 'package:fitness_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(


        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(

            ),

        ),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
