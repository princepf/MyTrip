class CategoryModel {
  final String image;
  final String label;

  CategoryModel({required this.image, required this.label});
}

class CardsModel {
  final String cardimage;
  final String cardtext;
  final String cardtextdes;
  CardsModel(
      {required this.cardimage,
      required this.cardtext,
      required this.cardtextdes});
}

class Destinationcard {
  final String desimage;
  final String destext;
  Destinationcard({required this.desimage, required this.destext});
}

class Bestdealcard {
  final String hotelimage;
  final String hotelname;
  final String hotelstar;
  final String hoteladdress;
  final String hotelprice;
  Bestdealcard(
      {required this.hotelprice,
      required this.hotelimage,
      required this.hotelname,
      required this.hotelstar,
      required this.hoteladdress});
}

class Explorecards {
  final String hotelimage;
  final String hotelname;
  final String hotelstar;
  final String hoteladdress;
  final String hotelprice;
  final String hotelreview;
  final String hoteltocity;
  Explorecards({
    required this.hotelimage,
    required this.hotelname,
    required this.hotelstar,
    required this.hoteladdress,
    required this.hotelprice,
    required this.hotelreview,
    required this.hoteltocity,
  });
}

class Mytripcards {
  final String hotelimage;
  final String hotelname;
  final String hotelstar;
  final String hoteladdress;
  final String hotelprice;
  final String hotelreview;
  final String hoteltocity;
  final bool favouriteicon;
  Mytripcards({
    required this.favouriteicon,
    required this.hotelimage,
    required this.hotelname,
    required this.hotelstar,
    required this.hoteladdress,
    required this.hotelprice,
    required this.hotelreview,
    required this.hoteltocity,
  });
}

class Informations {
  final String image;
  final String text;
  Informations({required this.image, required this.text});
}
