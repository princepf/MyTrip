import 'package:flutter/material.dart';
import 'package:the_traveller/edit_profile_page.dart';
import 'package:the_traveller/trips_page.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isnotify = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "The Rock",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfilePage(
                                          mailid: '',
                                          passcode: '',
                                        )));
                          },
                          child: Text(
                            "View and edit profile",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/profileimage.jpg",
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TripsPage()));
                      },
                      leading: Text(
                        "View/Manage Trip",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.backpack_outlined),
                    ),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: Text(
                        "Notification",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Switch(
                          activeColor: Color(0xff0ccfb1),
                          value: isnotify,
                          onChanged: (bool) {
                            setState(() {
                              isnotify = !isnotify;
                            });
                          }),
                    ),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: Text(
                        "Invite Friend",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.people_alt),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (contaxt) => Container(
                                  height: 250,
                                  width: double.infinity,
                                  color: Colors.grey[100],
                                  child: ListView(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          "Invite Friends",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff0ccfb1),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(Icons.close)),
                                      ),
                                      ListTile(title: Text("Share to")),
                                      Container(
                                        height: 80,
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Column(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                      "assets/images/facebook.png",
                                                    ),
                                                    height: 50,
                                                    width: 50,
                                                    //fit: BoxFit.cover,
                                                  ),
                                                  Text("Facebook")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Column(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                      "assets/images/whatsapp.png",
                                                    ),
                                                    height: 50,
                                                    width: 50,
                                                    //fit: BoxFit.cover,
                                                  ),
                                                  Text("Whatsapp")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Column(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                      "assets/images/twitter.png",
                                                    ),
                                                    height: 50,
                                                    width: 50,
                                                    //fit: BoxFit.cover,
                                                  ),
                                                  Text("twitter")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Column(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                      "assets/images/instagram.png",
                                                    ),
                                                    height: 50,
                                                    width: 50,
                                                    //fit: BoxFit.cover,
                                                  ),
                                                  Text("instagram")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Column(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                      "assets/images/linkedin.png",
                                                    ),
                                                    height: 50,
                                                    width: 50,
                                                    //fit: BoxFit.cover,
                                                  ),
                                                  Text("linkedin")
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ));
                      },
                    ),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: Text(
                        "Credit & Coupons",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.card_giftcard),
                    ),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: Text(
                        "Help Center",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.help_center),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (contaxt) => Container(
                                  height: 250,
                                  width: double.infinity,
                                  color: Colors.grey[100],
                                  child: ListView(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          "Help Center",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff0ccfb1),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        trailing: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(Icons.close)),
                                      ),
                                      ListTile(
                                        title: Text(
                                            "Travel apps help users to research destinations, find good flight and accommodation deals, and book services. Apps like TripAdvisor also offer travel guides and allow users to check reviews and ratings from travelers."),
                                      ),
                                    ],
                                  ),
                                ));
                      },
                    ),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: Text(
                        "Payments",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.payment),
                    ),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                    ListTile(
                      leading: Text(
                        "Setting",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.settings),
                    ),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                    ListTile(
                        leading: Text(
                          "Rate Us",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.star_border_rounded)),
                    Divider(
                      indent: 15,
                      thickness: 2,
                      endIndent: 15,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
