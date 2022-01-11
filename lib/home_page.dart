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
            'Mumbai (formerly called Bombay) is a densely populated city on India’s west coast. A financial center, its Indias largest city. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to the Hindu god Shiva. The citys also famous as the heart of the Bollywood film industry.'),
    Destinationcard(
        desimage: 'assets/place/chicago.jpg',
        destext: 'Chicago',
        description:
            'Chicago, on Lake Michigan in Illinois, is among the largest cities in the U.S. Famed for its bold architecture, it has a skyline punctuated by skyscrapers such as the iconic John Hancock Center, 1,451-ft. Willis Tower (formerly the Sears Tower) and the neo-Gothic Tribune Tower. The city is also renowned for its museums, including the Art Institute of Chicago with its noted Impressionist and Post-Impressionist works.'),
    Destinationcard(
        desimage: 'assets/place/italy.jpg',
        destext: 'Italy',
        description:
            'Italy, a European country with a long Mediterranean coastline, has left a powerful mark on Western culture and cuisine. Its capital, Rome, is home to the Vatican as well as landmark art and ancient ruins. Other major cities include Florence, with Renaissance masterpieces such as Michelangelo’s "David" and Brunelleschis Duomo; Venice, the city of canals; and Milan, Italys fashion capital.'),
    Destinationcard(
        desimage: 'assets/place/london.jpg',
        destext: 'London',
        description:
            'London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations. Across the Thames River, the London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city.'),
    Destinationcard(
        desimage: 'assets/place/moscow.png',
        destext: 'Moscow',
        description:
            'Moscow, on the Moskva River in western Russia, is the nation’s cosmopolitan capital. In its historic core is the Kremlin, a complex that’s home to the president and tsarist treasures in the Armoury. Outside its walls is Red Square, Russias symbolic center. Its home to Lenin’s Mausoleum, the State Historical Museums comprehensive collection and St. Basils Cathedral, known for its colorful, onion-shaped domes.'),
    Destinationcard(
        desimage: 'assets/place/paris.jpg',
        destext: 'Paris',
        description:
            'Paris, Frances capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré.'),
    Destinationcard(
        desimage: 'assets/place/spain.jpg',
        destext: 'Spain',
        description:
            'Spain, a country on Europe’s Iberian Peninsula, includes 17 autonomous regions with diverse geography and cultures. Capital city Madrid is home to the Royal Palace and Prado museum, housing works by European masters. Segovia has a medieval castle (the Alcázar) and an intact Roman aqueduct. Catalonia’s capital, Barcelona, is defined by Antoni Gaudí’s whimsical modernist landmarks like the Sagrada Família church. '),
    Destinationcard(
        desimage: 'assets/place/southafrica.jpg',
        destext: 'Southafrica',
        description:
            'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain. '),
    Destinationcard(
        desimage: 'assets/place/turkey.png',
        destext: 'Turkey',
        description:
            'Turkey, officially the Republic of Turkey (Turkish: Türkiye Cumhuriyeti, is a country located mainly on Anatolia in Western Asia, with a portion on the Balkans in Southeast Europe. It shares borders with Greece and Bulgaria to the northwest; the Black Sea to the north; Georgia to the northeast; Armenia, Azerbaijan, and Iran to the east; Iraq to the southeast; Syria and the Mediterranean Sea to the south; and the Aegean Sea to the west.'),
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(children: [
                  ShaderMask(
                    shaderCallback: (bound) => LinearGradient(
                            colors: [Colors.grey, Colors.black12],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center)
                        .createShader(bound),
                    blendMode: BlendMode.darken,
                    child: Container(
                      height: 180,
                      width: 140,
                      decoration: BoxDecoration(
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
                ]),
              ),
            ),
          ],
        ),
      );
}
