import 'package:flutter/material.dart';
import 'package:the_traveller/home_page.dart';

import 'log_in.dart';

class GorgotPassPage extends StatefulWidget {
  GorgotPassPage({Key? key}) : super(key: key);

  @override
  _GorgotPassPageState createState() => _GorgotPassPageState();
}

class _GorgotPassPageState extends State<GorgotPassPage> {
  TextEditingController emailCotroller = TextEditingController();
  String emailError = "";
  @override
  void initState() {
    emailCotroller.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 32,
                  color: Colors.black,
                ),
              ),
            ),
            body: Container(
                color: Colors.white,
                height: double.infinity,
                padding: EdgeInsets.all(10),
                child: ListView(scrollDirection: Axis.vertical, children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //text
                        Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            child: Text(
                              "Enter your email to receive an email to reset your password",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ),

                        //Email
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          margin: EdgeInsets.all(20),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset: Offset(2, 3),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            controller: emailCotroller,
                            decoration: const InputDecoration(
                              hintText: "Your Email",
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              border: InputBorder.none,
                              // onChanged: (val) {
                              //   email = val;
                              // },
                              // validator: (email) {
                              //   if (email!.isEmpty) {
                              //     return "Email Field is Empty";
                              //   }
                              //   if (!mail(email)) {
                              //     return "Enter Valid Email";
                              //   }
                              // },
                            ),
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 0),
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "$emailError",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        //button
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: InkWell(
                            onTap: submit,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff0ccfb1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Send",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ]))));
  }

  void submit() {
    if (validate()) {
      print(emailCotroller.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  bool mail(String em) {
    String e =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(e).hasMatch(em);
  }

  bool validate() {
    bool isValid = true;
    setState(() {
      emailError = "";
    });
    if (emailCotroller.text.isEmpty) {
      setState(() {
        emailError = "Email Field is Empty";
      });
      isValid = false;
    } else if (!mail(emailCotroller.text)) {
      setState(() {
        emailError = "Enter Valid Email";
      });
      isValid = false;
    }
    return isValid;
  }
}
