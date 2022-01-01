import 'package:flutter/material.dart';
import 'home_page_widgets/best_deal.dart';
import 'home_page_widgets/cards.dart';
import 'home_page_widgets/living_space.dart';
import 'models/category_model.dart';

class HomePage extends StatefulWidget {
  // final String mailid;
  // final String passcode;
  // HomePage({Key? key, required this.mailid, required this.passcode})
  //     : super(key: key);

  HomePage({
    Key? key,
  }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   print("${widget.mailid}");
  //   print("${widget.passcode}");
  //   super.initState();
  // }
  List<Destinationcard> destination = [
    Destinationcard(desimage: 'assets/place/mumbai.jpg', destext: 'Mumbai'),
    Destinationcard(desimage: 'assets/place/chicago.jpg', destext: 'Chicago'),
    Destinationcard(desimage: 'assets/place/italy.jpg', destext: 'Italy'),
    Destinationcard(desimage: 'assets/place/london.jpg', destext: 'London'),
    Destinationcard(desimage: 'assets/place/moscow.png', destext: 'Moscow'),
    Destinationcard(desimage: 'assets/place/paris.jpg', destext: 'Paris'),
    Destinationcard(desimage: 'assets/place/spain.jpg', destext: 'Spain'),
    Destinationcard(
        desimage: 'assets/place/southafrica.jpg', destext: 'Southafrica'),
    Destinationcard(desimage: 'assets/place/turkey.png', destext: 'Turkey'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Image.asset(
            "assets/images/mytriplogo.png",
            height: 200,
          ),
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

        // drawer: SafeArea(
        //   child: Drawer(
        //     child: Column(
        //       children: [
        //         Container(
        //           width: double.infinity,
        //           padding: EdgeInsets.all(30),
        //           height: 190,
        //           decoration: BoxDecoration(
        //             color: Color(0xff0ccfb1),
        //           ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 width: 80,
        //                 height: 80,
        //                 decoration: BoxDecoration(
        //                   shape: BoxShape.circle,
        //                   image: DecorationImage(
        //                       fit: BoxFit.cover,
        //                       image: AssetImage("assets/images/profile.jpg")),
        //                 ),
        //               ),
        //               SizedBox(height: 10),
        //               Text(
        //                 "${widget.mailid}",
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //               SizedBox(height: 3),
        //               Text("${widget.passcode}"),
        //             ],
        //           ),
        //         ),
        //         //DropList
        //         Expanded(
        //           child: ListView(
        //             children: [
        //               ListTile(
        //                 trailing: Icon(Icons.home, color: Color(0xff0ccfb1)),
        //                 title: Text("Home"),
        //               ),
        //               Divider(
        //                 endIndent: 15,
        //                 indent: 15,
        //                 thickness: 2,
        //               ),
        //               ListTile(
        //                 trailing: Icon(Icons.lock, color: Color(0xff0ccfb1)),
        //                 title: Text("Change passcodeword"),
        //               ),
        //               Divider(
        //                 endIndent: 15,
        //                 indent: 15,
        //                 thickness: 2,
        //               ),
        //               ListTile(
        //                 trailing:
        //                     Icon(Icons.group_add, color: Color(0xff0ccfb1)),
        //                 title: Text("Invite Friends"),
        //               ),
        //               Divider(
        //                 endIndent: 15,
        //                 indent: 15,
        //                 thickness: 2,
        //               ),
        //               ListTile(
        //                 trailing: Icon(Icons.wallet_giftcard,
        //                     color: Color(0xff0ccfb1)),
        //                 title: Text("Credit & Coupons"),
        //               ),
        //               Divider(
        //                 endIndent: 15,
        //                 indent: 15,
        //                 thickness: 2,
        //               ),
        //               ListTile(
        //                 trailing:
        //                     Icon(Icons.help_center, color: Color(0xff0ccfb1)),
        //                 title: Text("Help Center"),
        //               ),
        //               Divider(
        //                 endIndent: 15,
        //                 indent: 15,
        //                 thickness: 2,
        //               ),
        //               ListTile(
        //                 trailing: Icon(Icons.payment, color: Color(0xff0ccfb1)),
        //                 title: Text("Payment"),
        //               ),
        //               Divider(
        //                 endIndent: 15,
        //                 indent: 15,
        //                 thickness: 2,
        //               ),
        //               ListTile(
        //                 trailing:
        //                     Icon(Icons.settings, color: Color(0xff0ccfb1)),
        //                 title: Text("Setting"),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 350,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                            child: Icon(Icons.search, color: Color(0xff0ccfb1)),
                          ),
                          hintText: "Where are you going now?",
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),

              //catagory
              LivingSpace(),

              //cards
              Cards(),

              //text
              Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Popular Destination",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )),

              //destination card
              Container(
                height: 190,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destination.length,
                    itemBuilder: (context, index) => space(destination[index])),
              ),

              //text
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Best Deals",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )),

              //BestDeal Cards
              BestDeal(),
            ],
          ),
        ]),
      ),
    );
  }

  Widget space(Destinationcard data) => Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Container(
              height: 180,
              width: 140,
              child: Stack(
                children: [
                  Positioned(
                    top: 140,
                    left: 15,
                    child: Text(
                      "${data.destext}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("${data.desimage}"),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
