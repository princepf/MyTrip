import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amanda",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {},
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
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          "Change Password",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.lock),
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
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
