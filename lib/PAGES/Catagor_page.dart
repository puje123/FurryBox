import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/DELL/AndroidStudioProjects/furry_box/lib/Components/catagor.dart';

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
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Category(
              image_location: 'assets/images/logos/dog.png',
              image_caption: 'Dogs',
            ),
            Category(
              image_location: 'assets/images/logos/cat.png',
              image_caption: 'Cats',
            ),
            Category(
              image_location: 'assets/images/logos/bird.png',
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
          width: 130,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100,
                height: 80,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 12),
                ),
              )),
        ),
      ),
    );
  }
}
