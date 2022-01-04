import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final String mailid;
  final String passcode;
  EditProfilePage({Key? key, required this.mailid, required this.passcode})
      : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
                Stack(children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/profileimage.jpg"))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Color(0xff0ccfb1),
                      child: Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text("${widget.passcode}"),
                  ),
                  Divider(
                    indent: 15,
                    thickness: 2,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text("${widget.mailid}"),
                  ),
                  Divider(
                    indent: 15,
                    thickness: 2,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: Text(
                      "Phone",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text("+1 123455851"),
                  ),
                  Divider(
                    indent: 15,
                    thickness: 2,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: Text(
                      "Date of Birth",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text("23/01/1985"),
                  ),
                  Divider(
                    indent: 15,
                    thickness: 2,
                    endIndent: 15,
                  ),
                  ListTile(
                    leading: Text(
                      "Address",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text("California,United State"),
                  ),
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
    );
  }
}
