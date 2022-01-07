import 'package:flutter/material.dart';

import 'models/category_model.dart';

class InfoPage extends StatefulWidget {
  final Destinationcard? data;
  InfoPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: info(widget.data!),
    );
  }

  Widget info(Destinationcard data) => Column(
        children: [
          Image(
            image: AssetImage("${data.desimage}"),
            height: 300,
            width: double.infinity,
          ),
          Text("${data.destext}")
        ],
      );
}
