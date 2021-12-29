import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              elevation: 0,
              leading: Icon(Icons.arrow_back, color: Colors.black),
              title: Text("Explore",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff0ccfb1),
                    fontWeight: FontWeight.bold,
                  )),
              actions: [
                Icon(
                  Icons.favorite,
                  size: 30,
                  color: Color(0xff0ccfb1),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.location_pin,
                  size: 30,
                  color: Color(0xff0ccfb1),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            body: Column(
              children: [
                //searbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: Offset(0, 8),
                                blurRadius: 5,
                                spreadRadius: 1),
                          ]),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "Find Your Destination",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff0ccfb1),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: Offset(0, 8),
                                blurRadius: 5,
                                spreadRadius: 1),
                          ]),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            )));
  }
}
