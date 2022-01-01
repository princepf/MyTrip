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
        cardtextdes: 'The good life is a process not a state of being'),
    CardsModel(
        cardimage: 'assets/place/newyork.jpg',
        cardtext: 'Newyork',
        cardtextdes: 'If a man can live in Manhattan, he can live anywhere.'),
    CardsModel(
        cardimage: 'assets/place/singapor.png',
        cardtext: 'Singapor',
        cardtextdes:
            'At least when it comes to food, theres no snobbery in Singapore'),
    CardsModel(
        cardimage: 'assets/place/switzerland.png',
        cardtext: 'Switzerland',
        cardtextdes: 'It’s tough to find a place not to like in Switzerland.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 380,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: CarouselSlider.builder(
            itemCount: cardwidget.length,
            itemBuilder: (context, index, realIndex) =>
                space(cardwidget[index]),
            options: CarouselOptions(
                height: 400, autoPlay: false, enlargeCenterPage: true)));
  }

  Widget space(CardsModel data) => Container(
        height: 380,
        width: 320,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 90),
              alignment: Alignment.bottomLeft,
              child: Text(
                "${data.cardtext}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 40),
              alignment: Alignment.bottomLeft,
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
              fit: BoxFit.cover,
              image: AssetImage(
                "${data.cardimage}",
              ),
            )),
      );
}
