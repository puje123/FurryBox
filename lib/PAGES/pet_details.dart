import 'package:flutter/material.dart';
import 'package:furry_box/Components/popular.dart';

class PetDetails extends StatefulWidget {
  final String name;
  final picture;
  final String description;

  PetDetails({
    this.name,
    this.picture,
    this.description,
  });

  @override
  _PetDetailsState createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetails> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange[600],
        title: Text('Furry Box 1.0'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          height: 300,
          child: new GridTile(
            child: Container(
              color: Colors.white70,
              child: Image.asset(widget.picture),
            ),
            footer: new Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  widget.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Divider(),
        new ListTile(title: Text('Information'), subtitle: Text(widget.description),),
      ]),
    );
  }
}
