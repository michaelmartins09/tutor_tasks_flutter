import 'package:flutter/material.dart';
import 'package:tasks_tutor_flutter/pages/home/home_page.dart';
import 'package:tasks_tutor_flutter/theme/colors.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff515FF2),
        scaffoldBackgroundColor: kbackgroundColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        textTheme: TextTheme(
          headline5: TextStyle(fontSize: 18, color: Colors.black),
          headline4: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      home: HomePage(),
    );
  }
}
