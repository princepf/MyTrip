import 'package:flutter/material.dart';
import 'package:the_traveller/models/category_model.dart';

class LivingSpace extends StatefulWidget {
  const LivingSpace({Key? key}) : super(key: key);

  @override
  _LivingSpaceState createState() => _LivingSpaceState();
}

class _LivingSpaceState extends State<LivingSpace> {
  List<String> status = [
    "Hotel",
    "assets/livingspace/hotels.jpg",
    "Home",
    "assets/livingspace/Homes.jpg",
    "Resort",
    "assets/livingspace/resorts.jpg",
    "Palace",
    "assets/livingspace/palace.jpg",
    "Villa",
    "assets/livingspace/villa.jpeg",
    "Chalet",
    "assets/livingspace/chalet.jpg",
    "Apartment",
    "assets/livingspace/apart.jpg",
    "TreeHouse",
    "assets/livingspace/treehome.jpg",
    "ContainerHouse",
    "assets/livingspace/COntainer.jpg",
  ];
  List<CategoryModel> categories = [
    CategoryModel(
      label: 'Hotels',
      image: 'assets/livingspace/hotels.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => spaces(categories[index])),
    );
  }

  Widget spaces(CategoryModel data) => Container(
        height: 100,
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("${data.image}"))),
            ),
            Text("${data.label}")
          ],
        ),
      );
}
