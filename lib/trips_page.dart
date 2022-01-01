import 'package:flutter/material.dart';

import 'trip_page_widgets.dart/favourite_tab.dart';
import 'trip_page_widgets.dart/finished_tab.dart';
import 'trip_page_widgets.dart/upcoming_tab.dart';

class TripsPage extends StatefulWidget {
  TripsPage({Key? key}) : super(key: key);

  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              title: Text(
                "My Trips",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.upcoming),
                  ),
                  Tab(
                    icon: Icon(Icons.festival_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                TabBarView(
                  children: <Widget>[
                    UpcomingTab(),
                    FinishedTab(),
                    FavouriteTab()
                  ],
                ),
              ],
            )),
      ),
    ));
  }
}
