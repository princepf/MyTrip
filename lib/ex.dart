// SplashScreeen
// import 'package:flutter/material.dart';
// import 'package:travel_app/loginpage.dart';

// class IntroScreen extends StatefulWidget {
//   const IntroScreen({Key? key}) : super(key: key);

//   @override
//   _IntroScreenState createState() => _IntroScreenState();
// }

// class _IntroScreenState extends State<IntroScreen> {
//   int currentindex = 0;
//   List<Widget> _pagecontent = [Page1(), Page2(), Page3()];
//   @override
//   Widget build(BuildContext context) {
//     print(MediaQuery.of(context).size.height * 0.4532);
//     print(MediaQuery.of(context).size.width * 0.09);
//     return Stack(
//       children: [
//         PageView(
//           children: _pagecontent,
//           onPageChanged: (index) {
//             setState(() {
//               currentindex = index;
//             });
//           },
//         ),
//          Positioned(
//             top: MediaQuery.of(context).size.height * 0.4532,
//             // height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               // crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 for (int i = 0; i < _pagecontent.length; i++)
//                   Container(
//                     margin: EdgeInsets.all(9),
//                     // width: currentindex == i ? 25 : null,
//                     // width: MediaQuery.of(context).size.width,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child: Container(
//                         padding: currentindex == i
//                             ? EdgeInsets.all(5)
//                             : EdgeInsets.all(4),
//                         decoration: BoxDecoration(
//                             color: currentindex == i ? Colors.red : null,
//                             border: Border.all(color: Colors.red, width: 2),
//                             borderRadius: BorderRadius.circular(100)),
//                       ),
//                     ),
//                   ),
//               ],
//             ))
//       ],
//     );
//   }
// }

// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       extendBodyBehindAppBar: true,
//       body: Stack(
//         children: [
//           Positioned(
//             right: 0,
//             child: Container(
//               child: Image(
//                 image: AssetImage('assets/images/Group.png'),
//               ),
//             ),
//           ),
//           Positioned(
//               top: MediaQuery.of(context).size.height * 0.3,
//               left: MediaQuery.of(context).size.width * 0.235,
//               child: Text(
//                 "Get Ready To Explore",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Colors.black.withOpacity(0.5)),
//               )),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.38,
//             left: MediaQuery.of(context).size.width * 0.156,
//             child: Column(
//               children: [
//                 Text(
//                   "Choose the places, countries",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 19,
//                       color: Colors.grey.withOpacity(0.4)),
//                 ),
//                 Text(
//                   "you want to explore",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 19,
//                       color: Colors.grey.withOpacity(0.4)),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               left: MediaQuery.of(context).size.width * 0.09,
//               child: Image(image: AssetImage('assets/images/pana.png'))),
//           Positioned(
//               top: MediaQuery.of(context).size.height * 0.047,
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LoginPage()),
//                   );
//                 },
//                 child: Text(
//                   "Skip",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }

// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             right: 0,
//             child: Container(
//               child: Image(
//                 image: AssetImage('assets/images/Group.png'),
//               ),
//             ),
//           ),
//           Positioned(
//               top: MediaQuery.of(context).size.height * 0.3,
//               left: MediaQuery.of(context).size.width * 0.245,
//               child: Text(
//                 "Choose a Destination",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Colors.black.withOpacity(0.5)),
//               )),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.38,
//             left: MediaQuery.of(context).size.width * 0.08,
//             child: Column(
//               children: [
//                 Text(
//                   "you can choose the most affortable\nand rasonable pricing for you",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 19,
//                     color: Colors.grey.withOpacity(0.4),
//                   ),
//                 ),
//                 // Text(
//                 //   "and rasonable pricing for you",
//                 //   style: TextStyle(
//                 //       fontWeight: FontWeight.bold,
//                 //       fontSize: 19,
//                 //       color: Colors.grey.withOpacity(0.4)),
//                 // ),
//               ],
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               left: MediaQuery.of(context).size.width * 0.09,
//               child: Image(image: AssetImage('assets/images/pana1.jpg'))),
//           Positioned(
//               top: MediaQuery.of(context).size.height * 0.048,
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LoginPage()),
//                   );
//                 },
//                 child: Text(
//                   "Skip",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             right: 0,
//             child: Container(
//               child: Image(
//                 image: AssetImage('assets/images/Group.png'),
//               ),
//             ),
//           ),
//           Positioned(
//               top: MediaQuery.of(context).size.height * 0.3,
//               left: MediaQuery.of(context).size.width * 0.28,
//               child: Text(
//                 "Enjoy Your Holiday",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Colors.black.withOpacity(0.5)),
//               )),
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.38,
//             left: MediaQuery.of(context).size.width * 0.15,
//             child: Column(
//               children: [
//                 Text(
//                   "Choose the places, countries\nyou want to explore",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 19,
//                       color: Colors.grey.withOpacity(0.4)),
//                 ),
//                 // Text(
//                 //   "you want to explore",
//                 //   style: TextStyle(
//                 //       fontWeight: FontWeight.bold,
//                 //       fontSize: 19,
//                 //       color: Colors.grey.withOpacity(0.4)),
//                 // ),
//               ],
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               left: MediaQuery.of(context).size.width * 0.09,
//               child: Image(image: AssetImage('assets/images/pana.png'))),
//           Positioned(
//               top: MediaQuery.of(context).size.height * 0.048,
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LoginPage()),
//                   );
//                 },
//                 child: Text(
//                   "Finish",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }
