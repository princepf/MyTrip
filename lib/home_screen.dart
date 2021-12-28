import 'package:flutter/material.dart';
import 'package:the_traveller/widgets/living_space.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  final String mailid;
  final String passcode;
  HomePage({Key? key, required this.mailid, required this.passcode})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Explore'),
    ),
    Center(
      child: Text('Trips'),
    ),
    Center(
      child: Text('Profile'),
    ),
  ];
  @override
  void initState() {
    print("${widget.mailid}");
    print("${widget.passcode}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: <Widget>[
                Text('MyTrip',
                    style: TextStyle(
                        color: Color(0xff0ccfb1),
                        fontSize: 27,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ]),
          actions: [
            Icon(
              Icons.shopping_bag,
              size: 32,
              color: Color(0xff0ccfb1),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  height: 190,
                  decoration: BoxDecoration(
                    color: Color(0xff0ccfb1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/profile.jpg")),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${widget.mailid}",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 3),
                      Text("${widget.passcode}"),
                    ],
                  ),
                ),

                //DropList
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        trailing: Icon(Icons.home, color: Color(0xff0ccfb1)),
                        title: Text("Home"),
                      ),
                      Divider(
                        endIndent: 15,
                        indent: 15,
                        thickness: 2,
                      ),
                      ListTile(
                        trailing: Icon(Icons.lock, color: Color(0xff0ccfb1)),
                        title: Text("Change passcodeword"),
                      ),
                      Divider(
                        endIndent: 15,
                        indent: 15,
                        thickness: 2,
                      ),
                      ListTile(
                        trailing:
                            Icon(Icons.group_add, color: Color(0xff0ccfb1)),
                        title: Text("Invite Friends"),
                      ),
                      Divider(
                        endIndent: 15,
                        indent: 15,
                        thickness: 2,
                      ),
                      ListTile(
                        trailing: Icon(Icons.wallet_giftcard,
                            color: Color(0xff0ccfb1)),
                        title: Text("Credit & Coupons"),
                      ),
                      Divider(
                        endIndent: 15,
                        indent: 15,
                        thickness: 2,
                      ),
                      ListTile(
                        trailing:
                            Icon(Icons.help_center, color: Color(0xff0ccfb1)),
                        title: Text("Help Center"),
                      ),
                      Divider(
                        endIndent: 15,
                        indent: 15,
                        thickness: 2,
                      ),
                      ListTile(
                        trailing: Icon(Icons.payment, color: Color(0xff0ccfb1)),
                        title: Text("Payment"),
                      ),
                      Divider(
                        endIndent: 15,
                        indent: 15,
                        thickness: 2,
                      ),
                      ListTile(
                        trailing:
                            Icon(Icons.settings, color: Color(0xff0ccfb1)),
                        title: Text("Setting"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        body: ListView(scrollDirection: Axis.vertical, children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //search
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        decoration: InputDecoration(
                            prefixIcon: GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child:
                                  Icon(Icons.search, color: Color(0xff0ccfb1)),
                            ),
                            hintText: "Where are you going now?",
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
                //circule
                LivingSpace(),
                //cards
                CarouselSlider(
                    items: [
                      Container(
                        height: 380,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/place/jaipur.png"))),
                      ),
                      Container(
                        height: 380,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/place/newyork.jpg"))),
                      ),
                      Container(
                        height: 380,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/place/singapor.png"))),
                      ),
                      Container(
                        height: 380,
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/place/switzerland.png"))),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 400,
                      autoPlay: true,
                      enlargeCenterPage: true,
                    )),

                //text
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    child: Text(
                      "Popular Destination",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )),

                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/place/chicago.jpg"))),
                    ),
                  ],
                ),

                //text
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    child: Text(
                      "Best Deals",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
          ),
        ]),

        //BottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Color(0xff0ccfb1),
          unselectedItemColor: Colors.black,
          selectedFontSize: 17,
          unselectedFontSize: 15,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: "Trips"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: "Profile"),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
