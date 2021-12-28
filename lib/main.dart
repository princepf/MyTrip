import 'package:flutter/material.dart';
import 'package:the_traveller/log_cre_page.dart';
import 'package:the_traveller/profile_screen.dart';
import 'first_screen.dart';
import 'home_page.dart';
import 'navigations.dart';
import 'log_in.dart';
import 'sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: "RobotoSlab",
          primarySwatch: Colors.blue,
        ),
        // initialRoute: "/",
        // routes:{"/":(context)=> HomeScreen(mail: '', pass: '',)}
        home: Getstart());
  }
}
