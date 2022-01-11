import 'package:flutter/material.dart';
import 'home_page_widgets/best_deal.dart';
import 'home_page_widgets/cards.dart';
import 'home_page_widgets/living_space.dart';
import 'info_page.dart';
import 'models/category_model.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Destinationcard> destination = [
    Destinationcard(
        desimage: 'assets/place/mumbai.jpg',
        destext: 'Mumbai',
        description:
            'Mumbai is the centre of the Mumbai Metropolitan Region, the sixth most populous metropolitan area in the world with a population of over 2.3 crore (23 million).'),
    Destinationcard(
        desimage: 'assets/place/chicago.jpg',
        destext: 'Chicago',
        description:
            'City of Chicago, is the most populous city in the U.S. state of Illinois, and the third-most populous city in the United States, following New York City and Los Angeles.'),
    Destinationcard(
        desimage: 'assets/place/italy.jpg',
        destext: 'Italy',
        description:
            'Italy, country of south-central Europe, occupying a peninsula that juts deep into the Mediterranean Sea. Italy comprises some of the most varied and scenic landscapes on Earth and is often described as a country shaped like a boot.'),
    Destinationcard(
        desimage: 'assets/place/london.jpg',
        destext: 'London',
        description:
            'London is the capital and largest city of England and the United Kingdom. It stands on the River Thames in south-east England at the head of a 50-mile (80 km) estuary down to the North Sea, and has been a major settlement for two millennia.'),
    Destinationcard(
        desimage: 'assets/place/moscow.png',
        destext: 'Moscow',
        description:
            'Moscow, on the Moskva River in western Russia, is the nations cosmopolitan capital. In its historic core is the Kremlin, a complex thats home to the president and tsarist treasures in the Armoury. Outside its walls is Red Square, Russias symbolic center.'),
    Destinationcard(
        desimage: 'assets/place/paris.jpg',
        destext: 'Paris',
        description:
            'Paris, France capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century.'),
    Destinationcard(
        desimage: 'assets/place/spain.jpg',
        destext: 'Spain',
        description:
            'Spain, a country on Europe Iberian Peninsula, includes 17 autonomous regions with diverse geography and cultures. Capital city Madrid is home to the Royal Palace and Prado museum, housing works by European masters. Segovia has a medieval castle (the Alcázar) and an intact Roman aqueduct. '),
    Destinationcard(
        desimage: 'assets/place/southafrica.jpg',
        destext: 'Southafrica',
        description:
            'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope.'),
    Destinationcard(
        desimage: 'assets/place/turkey.png',
        destext: 'Turkey',
        description:
            'Turkey, country that occupies a unique geographic position, lying partly in Asia and partly in Europe. Throughout its history it has acted as both a barrier and a bridge between the two continents.'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Image.asset(
            "assets/images/mytriplogo.png",
            height: 200,
          ),
          actions: [
            Icon(
              Icons.shopping_bag,
              size: 32,
              color: Color(0xff0ccfb1),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 350,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: Offset(0, 8),
                              blurRadius: 5,
                              spreadRadius: 1),
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Icon(Icons.search, color: Color(0xff0ccfb1)),
                          ),
                          hintText: "Where are you going now?",
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),

              //catagory
              LivingSpace(),

              //cards
              Cards(),

              //text
              Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Popular Destination",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )),

              //destination card
              Container(
                height: 190,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: destination.length,
                    itemBuilder: (context, index) => space(destination[index])),
              ),

              //text
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Best Deals",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )),

              //BestDeal Cards
              BestDeal(),
            ],
          ),
        ]),
      ),
    );
  }

  Widget space(Destinationcard data) => Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InfoPage(data: data)));
              },
              child: Container(
                height: 180,
                width: 140,
                child: Stack(
                  children: [
                    Positioned(
                      top: 140,
                      left: 15,
                      child: Text(
                        "${data.destext}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${data.desimage}"),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
