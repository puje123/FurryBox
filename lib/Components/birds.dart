import 'package:flutter/material.dart';
import 'package:furry_box/PAGES/pet_details.dart';

class birds extends StatefulWidget {
  @override
  _birdsState createState() => _birdsState();
}

class _birdsState extends State<birds> {
  var birds_list = [
    {
      'name': 'Cockatiels',
      'picture': 'assets/images/birds/Cockatiels.jpg',
    },
    {
      'name': 'Budgies',
      'picture': 'assets/images/birds/Budgies.jpg',
    },
    {
      'name': 'Canaries',
      'picture': 'assets/images/birds/Canaries.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: birds_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_popular(
            birds_name: birds_list[index]['name'],
            birds_picture: birds_list[index]['picture'],
          );
        });
  }
}

class single_popular extends StatelessWidget {
  final birds_name;
  final birds_picture;

  single_popular({
    this.birds_name,
    this.birds_picture,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: birds_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new PetDetails(
                   animal_name: birds_name,
                   detail_picture: birds_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new ListTile(
                      leading: Text(
                       birds_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    birds_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
