import 'package:flutter/material.dart';
import 'package:furry_box/PAGES/pet_details.dart';

class cats extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<cats> {
  var popular_list = [
    {
      'name': 'Khao Manee',
      'picture': 'assets/images/cats/Khaomanee.jpg'
    },
    {
      'name': 'Bengal',
      'picture': 'assets/images/popular/Bengal.jpg',
    },
    {
      'name': 'Siamese',
      'picture': 'assets/images/cats/Siamese.jpg'
    },
    {
      'name': 'Sphynx',
      'picture': 'assets/images/cats/Sphynx.jpg'
    },
    {
      'name': 'Persian ',
      'picture': 'assets/images/cats/Persian.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: popular_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_popular(
            popular_name: popular_list[index]['name'],
            popular_picture: popular_list[index]['picture'],
          );
        });
  }
}

class single_popular extends StatelessWidget {
  final popular_name;
  final popular_picture;

  single_popular({
    this.popular_name,
    this.popular_picture,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: popular_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new PetDetails(
                    animal_name: popular_name,
                    detail_picture: popular_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new ListTile(
                      leading: Text(
                        popular_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    popular_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
