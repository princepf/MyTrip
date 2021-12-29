import 'package:flutter/material.dart';
import 'package:the_traveller/models/category_model.dart';

class LivingSpace extends StatefulWidget {
  const LivingSpace({Key? key}) : super(key: key);

  @override
  _LivingSpaceState createState() => _LivingSpaceState();
}

class _LivingSpaceState extends State<LivingSpace> {
  List<CategoryModel> categories = [
    CategoryModel(label: 'Hotels', image: 'assets/livingspace/hotels.jpg'),
    CategoryModel(label: 'Homes', image: 'assets/livingspace/homes.jpg'),
    CategoryModel(label: 'Resort', image: 'assets/livingspace/resorts.jpg'),
    CategoryModel(label: 'Palace', image: 'assets/livingspace/palace.jpg'),
    CategoryModel(label: 'Villa', image: 'assets/livingspace/villa.jpeg'),
    CategoryModel(label: 'Chalet', image: 'assets/livingspace/chalet.jpg'),
    CategoryModel(label: 'Apartment', image: 'assets/livingspace/apart.jpg'),
    CategoryModel(label: 'TreeHome', image: 'assets/livingspace/treehome.jpg'),
    CategoryModel(
        label: 'Container', image: 'assets/livingspace/container.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => spaces(categories[index])),
        ),
      ],
    );
  }

  Widget spaces(CategoryModel data) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
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
            Text("${data.label}"),
          ],
        ),
      );
}
