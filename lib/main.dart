import 'package:flutter/material.dart';
import 'splash_screen.dart';

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
        home: SplashScreen());
  }
}
