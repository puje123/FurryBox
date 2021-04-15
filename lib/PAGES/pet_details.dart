import 'package:flutter/material.dart';
import 'package:furry_box/Components/popular.dart';


class PetDetails extends StatefulWidget {
  final popular_detail_name;
  final popular_detail_picture;

  PetDetails({
    this.popular_detail_name,
    this.popular_detail_picture,
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
              child: Image.asset(widget.popular_detail_picture),
            ),
            footer: new Container(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  widget.popular_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Divider(),
        new ListTile(
          title: Text('Pet Details'),
          subtitle: Text(
              'Doberman Pinschers originated in Germany during the late 19th century, mostly bred as guard dogs. Their exact ancestry is unknown, but they’re believed to be a mixture of many dog breeds, including the Rottweiler, Black and Tan Terrier, and German Pinscher. With their sleek coat, athletic build, and regal appearance, this pup looks like an aristocrat. They’re highly energetic and smart dogs who perform well in police and military work, canine sports, and as family guardians and companions. Remember, you can find just about any breed of dog at local shelters and rescues. If you decide that this is the breed for you, adopt! Don’t shop! DogTime recommends this big, spacious crate to give your big Doberman Pinscher a place to rest and relax. You should also pick up this dog brush and massager for your short-haired pup!'),
        ),
      ]),
    );
  }
}
