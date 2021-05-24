import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/DELL/AndroidStudioProjects/furry_box/lib/Components/catagor.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

class HorizontalListCatagor extends StatelessWidget {
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
        height: 1000,
        width: 1000,
        child: ListView(
          children: [
            Category(
              image_location: 'assets/images/dogs.jpg',
              image_caption: 'Dogs',
            ),
            Category(
              image_location: 'assets/images/cats.jpg',
              image_caption: 'Cats',
            ),
            Category(
              image_location: 'assets/images/birds.jpg',
              image_caption: 'Bird',
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => new catagor(animal: image_caption))),
        child: Container(
          width: 500,
          child: ListTile(
            title: Container(
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12),
              ),
            ),
            subtitle: Image.asset(
              image_location,
              height: 90,
              alignment: Alignment.topLeft,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
