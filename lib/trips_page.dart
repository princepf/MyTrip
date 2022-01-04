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
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "My Trips",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30)),
                    height: 50,
                    child: TabBar(
                      labelColor: Color(0xff0ccfb1),
                      unselectedLabelColor: Colors.grey[600],
                      labelStyle: TextStyle(fontSize: 18),
                      unselectedLabelStyle: TextStyle(fontSize: 15),
                      indicator:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      tabs: [
                        Text("Upcoming"),
                        Text("Finished"),
                        Text("Favourite")
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [UpcomingTab(), FinishedTab(), FavouriteTab()],
                ))
              ],
            )),
      ),
    ));
  }
}
