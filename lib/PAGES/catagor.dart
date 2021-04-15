import 'package:flutter/material.dart';
import 'package:furry_box/Components/popular.dart';

class catagor extends StatefulWidget {
  @override
  _catagorState createState() => _catagorState();
}

class _catagorState extends State<catagor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange[600],
        title: Text('Furry Box 1.0'),
        centerTitle: true,
      ),
      body: Container(
          height: 320,
          child: popular()
      ),
    );
  }
}
