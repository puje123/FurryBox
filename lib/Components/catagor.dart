import 'package:flutter/material.dart';
import 'package:furry_box/Components/dogs.dart';
import 'package:furry_box/Components/cats.dart';
import 'package:furry_box/Components/birds.dart';

class catagor extends StatefulWidget {
  catagor({Key key, @required this.animal}) : super(key: key);
  final String animal;

  @override
  _catagorState createState() => _catagorState();
}

class _catagorState extends State<catagor> {
  @override
  Widget build(BuildContext context) {
    if (widget.animal == 'Bird') {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepOrange[600],
          title: Text('Furry Box 1.0'),
          centerTitle: true,
        ),
        body: Container(height: 700, child: birds()),
      );
    } else if (widget.animal == 'Cats') {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepOrange[600],
          title: Text('Furry Box 1.0'),
          centerTitle: true,
        ),
        body: Container(height: 700, child: cats()),
      );
    } else if (widget.animal == 'Dogs') {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepOrange[600],
          title: Text('Furry Box 1.0'),
          centerTitle: true,
        ),
        body: Container(height: 700, child: dogs()),
      );
    } else {
      throw Exception('It must be a dog or a cat or a bird');
    }
  }
}
