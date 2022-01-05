import 'package:flutter/material.dart';

import 'models/category_model.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  List<Informations> informations = [
    Informations(
      image: 'assets/place/mumbai.jpg',
      text: 'Mumbai',
    ),
    Informations(
      image: 'assets/place/chicago.jpg',
      text: 'Chicago',
    ),
    Informations(
      image: 'assets/place/italy.jpg',
      text: 'Italy',
    ),
    Informations(
      image: 'assets/place/london.jpg',
      text: 'London',
    ),
    Informations(
      image: 'assets/place/moscow.png',
      text: 'Moscow',
    ),
    Informations(
      image: 'assets/place/paris.jpg',
      text: 'Paris',
    ),
    Informations(
      image: 'assets/place/spain.jpg',
      text: 'Spain',
    ),
    Informations(
      image: 'assets/place/southafrica.jpg',
      text: 'SouthAfrica',
    ),
    Informations(
      image: 'assets/place/turkey.png',
      text: 'Turkey',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: informations.length,
          itemBuilder: (context, index) => info(informations[index])),
    );
  }

  Widget info(Informations data) => Column(
        children: [
          Image(
            image: AssetImage("${data.image}"),
            height: 300,
            width: double.infinity,
          ),
          Text("${data.text}")
        ],
      );
}
