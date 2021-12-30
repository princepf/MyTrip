import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:the_traveller/models/category_model.dart';

class Cards extends StatefulWidget {
  Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List<CardsModel> cardwidget = [
    CardsModel(
        cardimage: 'assets/place/jaipur.png',
        cardtext: 'Jaipur',
        cardtextdes: 'The good life is a process, not a state of being'),
    CardsModel(
        cardimage: 'assets/place/newyork.jpg',
        cardtext: 'Newyork',
        cardtextdes: 'a'),
    CardsModel(
        cardimage: 'assets/place/singapor.png',
        cardtext: 'Singapor',
        cardtextdes: 'a'),
    CardsModel(
        cardimage: 'assets/place/switzerland.png',
        cardtext: 'Switzerland',
        cardtextdes: 'a'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 380,
        padding: EdgeInsets.symmetric(vertical: 10),
        child:
            // ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: cardwidget.length,
            //     itemBuilder: (context, index) => space(cardwidget[index])),
            CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: [
            1,
            2,
            3,
            4,
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                    ));
              },
            );
          }).toList(),
        ));
  }

  Widget space(CardsModel data) => Container(
        height: 380,
        width: 320,
        child: Stack(
          children: [
            Positioned(
              top: 240,
              left: 25,
              child: Text(
                "${data.cardtext}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 280,
              left: 25,
              child: Text(
                "${data.cardtextdes}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("${data.cardimage}"))),
      );
}
