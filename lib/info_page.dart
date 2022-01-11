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
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body:
              // info(widget.data!),
              Column(
            children: [
              Container(
                height: 350,
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("${widget.data!.desimage}"))),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "${widget.data!.destext}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "${widget.data!.description}",
                    textAlign: TextAlign.justify,
                  ))
            ],
          )),
    );
  }

  // Widget info(Destinationcard data) => Column(
  //       children: [
  //         Image(
  //           image: AssetImage("${data.desimage}"),
  //           height: 300,
  //           width: double.infinity,
  //         ),
  //         Text("${data.destext}"),
  //         Text("${data.description}")
  //       ],
  //     );
}
