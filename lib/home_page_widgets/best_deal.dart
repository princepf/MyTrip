import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:the_traveller/models/category_model.dart';

class BestDeal extends StatefulWidget {
  BestDeal({Key? key}) : super(key: key);

  @override
  _BestDealState createState() => _BestDealState();
}

List<Bestdealcard> bestdealcard = [
  Bestdealcard(
      hotelimage: 'assets/explore/udaivilas.jpg',
      hotelname: 'Oberoi Udaivillas',
      hotelstar: '5 Star Hotel',
      hoteladdress: 'Udaipur, India',
      hotelprice: '\$545'),
  Bestdealcard(
      hotelimage: 'assets/explore/grandhotel.jpg',
      hotelname: 'Grand Royale Hotel',
      hotelstar: '5 Star Hotel',
      hoteladdress: 'Hyde Park, London',
      hotelprice: '\$350'),
  Bestdealcard(
      hotelimage: 'assets/explore/mahali.jpg',
      hotelname: 'Mahali Mzuri',
      hotelstar: '5 Star Hotel',
      hoteladdress: 'Masai Mara, Kenya',
      hotelprice: '\$495'),
  Bestdealcard(
      hotelimage: 'assets/explore/queens.jpg',
      hotelname: 'Queens Hotel',
      hotelstar: '5 Star Hotel',
      hoteladdress: 'Finsbury Park, London',
      hotelprice: '\$250'),
  Bestdealcard(
      hotelimage: 'assets/explore/theoberoi.jpg',
      hotelname: 'The Oberoi',
      hotelstar: '5 Star Hotel',
      hoteladdress: 'New Delhi, India',
      hotelprice: '\$545'),
  Bestdealcard(
      hotelimage: 'assets/explore/capella.png',
      hotelname: 'Capella Ubud',
      hotelstar: '5 Star Hotel',
      hoteladdress: 'Bali, Indonesia',
      hotelprice: '\$425'),
];

class _BestDealState extends State<BestDeal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        itemCount: bestdealcard.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => space(bestdealcard[index]),
      ),
    );
  }

  Widget space(Bestdealcard data) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 310,
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
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("${data.hotelimage}"))),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
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
                        SizedBox(
                          height: 5,
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
                          height: 7,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff0ccfb1),
                                        size: 18,
                                      ),
                                      Text(
                                        "${data.hoteladdress}",
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
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    child: Text(
                                      "${data.hotelprice}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "/pernight",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
