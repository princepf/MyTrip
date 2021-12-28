import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'log_cre_page.dart';
import 'log_in.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // final _formKey = GlobalKey<FormState>();
  TextEditingController emailCotroller = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  bool hideshow = true;
  String emailError = "";
  String passError = "";
  String fnameError = "";
  String lnameError = "";

  @override
  void initState() {
    emailCotroller.text = '';
    passController.text = '';
    fnameController.text = '';
    lnameController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Form(
              // key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogCreScreen()));
                    },
                    child: Container(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //Facebook & Twitter
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                        "or sign up with email",
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),

                  //Add Detail
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        //Firstname
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          margin:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                          height: 45,
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
                            controller: fnameController,
                            // onChanged: (val) {
                            //   fname = val;
                            // },
                            // validator: (fname) {
                            //   if (fname!.isEmpty) {
                            //     return "Firstname Field is Empty";
                            //   }
                            //   if (!firname(fname)) {
                            //     return "Enter Valid Firstname";
                            //   }
                            // },
                            decoration: const InputDecoration(
                              hintText: "First Name",
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "$fnameError",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),

                        //Lasttname
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          margin:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                          height: 45,
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
                            controller: lnameController,
                            // onChanged: (val) {
                            //   lname = val;
                            // },
                            // validator: (lname) {
                            //   if (lname!.isEmpty) {
                            //     return "Lastname Field is Empty";
                            //   }
                            //   if (!lname(fname)) {
                            //     return "Enter Valid Lastname";
                            //   }
                            // },
                            decoration: const InputDecoration(
                              hintText: "Last Name",
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 40),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "$lnameError",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),

                        //mail
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          margin:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                          height: 45,
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
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            "$emailError",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),

                        //pass
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          margin:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                          height: 45,
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
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            "$passError",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Sign up Button
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: InkWell(
                      onTap: submit,
                      child: Container(
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
                              "Sign up",
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

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'By siging uo, you agreed with our Terms of Services and Privacy Policy.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Log in
                  Container(
                    padding: EdgeInsets.all(45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Already have account? ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Log in',
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
          ),
        ),
      ),
    );
  }

  void submit() {
    if (validatemail()) {
      print(emailCotroller.text);
      print(passController.text);

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                  mailid: emailCotroller.text, passcode: passController.text)));
    }
  }

  bool mail(String em) {
    String e =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(e).hasMatch(em);
  }

  bool password(String pw) {
    String p = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
    return RegExp(p).hasMatch(pw);
  }

  bool validatemail() {
    bool isValid = true;
    if (emailCotroller.text.isEmpty) {
      setState(() {
        emailError = "Email Field is Empty";
      });
      isValid = false;
    }
    if (!mail(emailCotroller.text)) {
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
    }
    if (!password(passController.text)) {
      setState(() {
        passError = "Enter Valid Password";
      });
      isValid = false;
    }

    return isValid;
  }
}
