import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:the_traveller/models/category_model.dart';

class BestDeal extends StatefulWidget {
  BestDeal({Key? key}) : super(key: key);

  @override
  _BestDealState createState() => _BestDealState();
}

List favs = [];
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

  Widget space(Bestdealcard data) => GestureDetector(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) => DraggableScrollableSheet(
                  maxChildSize: 0.8,
                  builder: (_, controller) => Container(
                        // color: Colors.white,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/place/wallp.jpg"))),
                        child: ListView(controller: controller, children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: ListTile(
                                    leading: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                    ),
                                    trailing: CircleAvatar(
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
                                ),
                                Container(
                                  height: 250,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "${data.hotelname}",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // Container(
                                                //   child: Text(
                                                //     "${data.hotelname}",
                                                //     style: TextStyle(
                                                //         fontSize: 14,
                                                //         fontWeight:
                                                //             FontWeight.bold,
                                                //         color: Colors.white),
                                                //   ),
                                                // ),
                                                Container(
                                                  child: Text(
                                                    "${data.hotelstar}",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "${data.hoteladdress}",
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                color: Color(
                                                                    0xff0ccfb1),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          5),
                                                              child: Icon(
                                                                Icons
                                                                    .location_on,
                                                                color: Color(
                                                                    0xff0ccfb1),
                                                                size: 18,
                                                              ),
                                                            ),
                                                            // Text(
                                                            //   "${data.hoteltocity}",
                                                            //   style: TextStyle(
                                                            //     fontSize: 11,
                                                            //     color: Colors.grey,
                                                            //     fontWeight: FontWeight.bold,
                                                            //   ),
                                                            // ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            RatingBar(
                                                                minRating: 1,
                                                                itemCount: 5,
                                                                itemSize: 15,
                                                                ratingWidget:
                                                                    RatingWidget(
                                                                        full: Icon(
                                                                            Icons
                                                                                .star,
                                                                            color: Color(
                                                                                0xff0ccfb1)),
                                                                        half: Icon(
                                                                            Icons
                                                                                .star,
                                                                            color: Color(
                                                                                0xff0ccfb1)),
                                                                        empty:
                                                                            Icon(
                                                                          Icons
                                                                              .star_border_outlined,
                                                                        )),
                                                                onRatingUpdate:
                                                                    (rating) =>
                                                                        print(
                                                                            rating)),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            // Container(
                                                            //   child: Text(
                                                            //     "${data.hotelreview}",
                                                            //     style: TextStyle(
                                                            //       fontSize: 11,
                                                            //       color: Colors.grey,
                                                            //       fontWeight: FontWeight.bold,
                                                            //     ),
                                                            //   ),
                                                            // ),
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "${data.hotelprice}",
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "/pernight",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        alignment: Alignment.center,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                            height: 50,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Color(0xff0ccfb1),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 5,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: Text(
                                              "Book Now",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 19,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      )));
        },
        child: Container(
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
                    //Image
                    Flexible(
                      flex: 3,
                      child: Container(
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
                    ),
                    //Text
                    Flexible(
                      flex: 7,
                      child: Container(
                        height: 100,
                        width: double.infinity,
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
                              height: 5,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                  Flexible(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
