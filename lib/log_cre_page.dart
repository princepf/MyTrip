import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'log_in.dart';
import 'sign_up_screen.dart';

class LogCreScreen extends StatefulWidget {
  LogCreScreen({Key? key}) : super(key: key);

  @override
  _LogCreScreenState createState() => _LogCreScreenState();
}

class _LogCreScreenState extends State<LogCreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // CarouselSlider(
                //     items: [
                //       Image(image: AssetImage("assets/images/i1.png")),
                //       Image(image: AssetImage("assets/images/i2.png")),
                //       Image(image: AssetImage("assets/images/i3.png")),
                //     ],
                //     options: CarouselOptions(
                //       height: 400,
                //       enlargeCenterPage: true,
                //       autoPlay: true,
                //     )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Plan your trip",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  child: Text(
                    "Book one of our unique hotel to escape the ordinary",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                      fontSize: 15,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    height: 45,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[100],
                            fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff0ccfb1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 45,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                            fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(1, 3),
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
    );
  }
}
