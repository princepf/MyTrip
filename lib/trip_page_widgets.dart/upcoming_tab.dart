import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:the_traveller/models/category_model.dart';

class UpcomingTab extends StatefulWidget {
  UpcomingTab({Key? key}) : super(key: key);

  @override
  _UpcomingTabState createState() => _UpcomingTabState();
}

class _UpcomingTabState extends State<UpcomingTab> {
  List favs = [];
  List<Mytripcards> mytripcards = [
    Mytripcards(
        hotelimage: 'assets/explore/udaivilas.jpg',
        hotelname: 'Oberoi Udaivillas',
        hotelstar: '5 Star Hotel',
        hoteladdress: 'Udaipur, India',
        hotelprice: '\$545',
        hoteltocity: '2 km to city',
        hotelreview: '1500 Review',
        favouriteicon: true),
    Mytripcards(
        hotelimage: 'assets/explore/burjalarab.jpg',
        hotelname: 'The Burj Al Arab',
        hotelstar: '7 Star Hotel',
        hoteladdress: 'Umm Suqeim 3 - Dubai',
        hotelprice: '\$1058',
        hoteltocity: '1 km to city',
        hotelreview: '2500 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/mahali.jpg',
        hotelname: 'Mahali Mzuri ',
        hotelstar: '5 Star Hotel',
        hoteladdress: 'Masai Mara, Kenya',
        hotelprice: '\$495',
        hoteltocity: '2 km to city',
        hotelreview: '456 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/theoberoi.jpg',
        hotelname: 'The Oberoi',
        hotelstar: '5 Star Hotel',
        hoteladdress: 'New Delhi, India',
        hotelprice: '\$545',
        hoteltocity: '2 km to city',
        hotelreview: '685 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/capella.png',
        hotelname: 'Capella Ubud',
        hotelstar: '5 Star Hotel',
        hoteladdress: 'Bali, Indonesia',
        hotelprice: '\$425',
        hoteltocity: '2 km to city',
        hotelreview: '487 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/tajlakepalace.jpg',
        hotelname: 'Taj Lake Palace',
        hotelstar: '5 Star Hotel',
        hoteladdress: 'Udaipur, India',
        hotelprice: '\$395',
        hoteltocity: '3 km to city',
        hotelreview: '180 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/amarvilas.png',
        hotelname: 'The Oberoi Amarvilas',
        hotelstar: '7 Star Hotel',
        hoteladdress: 'Agra, India',
        hotelprice: '\$650',
        hoteltocity: '1 km to city',
        hotelreview: '519 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/ritzcarlton.jpg',
        hotelname: 'Ritz-Carlton Montr??al',
        hotelstar: '4 Star Hotel',
        hoteladdress: 'Montreal, Canada',
        hotelprice: '\$320',
        hoteltocity: '2 km to city',
        hotelreview: '280 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/belmond.jpg',
        hotelname: 'Belmond Hotel',
        hotelstar: '5 Star Hotel',
        hoteladdress: 'Ravello, Italy',
        hotelprice: '\$699',
        hoteltocity: '5 km to city',
        hotelreview: '250 Review',
        favouriteicon: false),
    Mytripcards(
        hotelimage: 'assets/explore/cavallopoint.jpg',
        hotelname: ' Cavallo Point Lodge',
        hotelstar: '7 Star Hotel',
        hoteladdress: 'San Francisco, USA',
        hotelprice: '\$550',
        hoteltocity: '3.5 km to city',
        hotelreview: '700 Review',
        favouriteicon: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //text
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            "Places",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        Expanded(
          child: Container(
            // height: 600,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mytripcards.length,
                itemBuilder: (context, index) => space(mytripcards[index])),
          ),
        ),
      ],
    ));
  }

  Widget space(Mytripcards data) => Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 300,
                            top: 10,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 18,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (favs.contains(data)) {
                                    favs.remove(data);
                                  } else {
                                    favs.add(data);
                                  }
                                });
                              },
                              child: Icon(
                                favs.contains(data)
                                    ? Icons.favorite
                                    : Icons.favorite_outline_outlined,
                                size: 20,
                                color: Color(0xff0ccfb1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("${data.hotelimage}"))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "${data.hotelname}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "${data.hotelstar}",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${data.hoteladdress}",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff0ccfb1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Icon(
                                            Icons.location_on,
                                            color: Color(0xff0ccfb1),
                                            size: 18,
                                          ),
                                        ),
                                        Text(
                                          "${data.hoteltocity}",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        RatingBar(
                                            itemCount: 5,
                                            itemSize: 15,
                                            ratingWidget: RatingWidget(
                                                full: Icon(Icons.star,
                                                    color: Color(0xff0ccfb1)),
                                                half: Icon(Icons.star,
                                                    color: Color(0xff0ccfb1)),
                                                empty: Icon(
                                                  Icons.star_border_outlined,
                                                )),
                                            onRatingUpdate: (rating) =>
                                                print(rating)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          child: Text(
                                            "${data.hotelreview}",
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "${data.hotelprice}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "/pernight",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
