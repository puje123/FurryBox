import 'package:flutter/material.dart';
import 'package:furry_box/Components/popular.dart';

class PetDetails extends StatefulWidget {
  final String animal_name;
  final detail_picture;

  PetDetails({
    this.animal_name,
    this.detail_picture,
  });

  @override
  _PetDetailsState createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetails> {
  @override
  Widget build(BuildContext context) {
    final description = 'hello';
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange[600],
        title: Text('Furry Box 1.0'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(children: [
        Container(
          height: 300,
          child: new GridTile(
            child: Container(
              color: Colors.white70,
              child: Image.asset(widget.detail_picture),
            ),
            footer: new Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  widget.animal_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Divider(),
        new ListTile(title: Text('Pet Details'), subtitle: Text(description)),
      ]),
    );
  }
}
