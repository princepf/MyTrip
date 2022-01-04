import 'package:flutter/material.dart';
import 'package:the_traveller/edit_profile_page.dart';
import 'package:the_traveller/home_page.dart';

import 'forgotpass_page.dart';
import 'log_cre_page.dart';
import 'bottom_nav_page.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final _formKey = GlobalKey<FormState>();
  TextEditingController emailCotroller = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool hideshow = true;
  String emailError = "";
  String passError = "";

  @override
  void initState() {
    emailCotroller.text;
    passController.text;
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
                  MaterialPageRoute(builder: (context) => LogCreScreen()));
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
            Form(
              // key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //Facebook & Twitter
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Facebook
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff3B5998),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/facebook.png",
                                  height: 40,
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // //Twitter
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff50ABF1),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/twitter.png",
                                  fit: BoxFit.cover,
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Twitter",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Text
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "or log in with email",
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),

                  //Add Detail
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //mail
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
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
                            decoration: const InputDecoration(
                              hintText: "Your Email",
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "$emailError",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),

                        //pass
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
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
                            controller: passController,
                            // onChanged: (val) {
                            //   pass = val;
                            // },
                            // validator: (pass) {
                            //   if (pass!.isEmpty) {
                            //     return "Password Field is Empty";
                            //   }
                            //   if (!password(pass)) {
                            //     return "Enter Valid Password";
                            //   }
                            // },
                            obscureText: hideshow,
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      hideshow = !hideshow;
                                    });
                                  },
                                  child: Icon(
                                    hideshow
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "$passError",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //forget pass
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(right: 20, bottom: 20),
                      alignment: Alignment.topRight,
                      child: const Text(
                        "Forgo yourt Password?",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),

                  //Log in Button
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: submit,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        child: Text(
                          "Log in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //signup
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 180),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Do not have an account? ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Sign up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color(0xff0ccfb1))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void submit() {
    if (validate()) {
      print(emailCotroller.text);
      print(passController.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomNavPage()));
    }
  }

  bool mail(String em) {
    String e =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(e).hasMatch(em);
  }

  bool password(String ps) {
    String p = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z]';
    return RegExp(p).hasMatch(ps);
  }

  bool validate() {
    bool isValid = true;
    setState(() {
      emailError = "";
      passError = "";
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

    if (passController.text.isEmpty) {
      setState(() {
        passError = "Password Field is Empty";
      });
      isValid = false;
    } else if (!password(passController.text)) {
      setState(() {
        passError = "Enter Valid Password";
      });
      isValid = false;
    }
    return isValid;
  }
}
