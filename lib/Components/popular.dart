import 'package:flutter/material.dart';
import 'package:furry_box/PAGES/pet_details.dart';

class popular extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<popular> {
  var popular_list = [
    {
      'name': 'Doberman  ',
      'picture': 'assets/images/popular/Doberman.jpg',
      'description': 'The Dobermann,or Doberman Pinscher in the United States and Canada, is a medium-large breed of domestic dog that was originally developed around 1890 by Karl Friedrich Louis Dobermann, a tax collector from Germany. The Dobermann has a long muzzle. It stands on its pads and is not usually heavy-footed. Ideally, they have an even and graceful gait. Traditionally, the ears were cropped and posted and the tail was docked. However, in some countries, these procedures are now illegal. Dobermanns have markings on the chest, paws/legs, muzzle, above the eyes, and underneath the tail.'
    },
    {
      'name': 'Bengal Cat',
      'picture': 'assets/images/popular/Bengal.jpg',
      'description': 'The Bengal cat is a domesticated cat breed created from hybrids of domestic cats, especially the spotted Egyptian Mau, with the Asian leopard cat (Prionailurus bengalensis). The breed name comes from the leopard cats taxonomic name. Bengals have a wild appearance; their golden shimmer comes from their leopard cat ancestry, and their coats may show spots, rosettes, arrowhead markings, or marbling. They are an energetic breed which needs much exercise and play.'
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
            popular_description: popular_list[index]['description'],
          );
        });
  }
}

class single_popular extends StatelessWidget {
  final popular_name;
  final popular_picture;
  final popular_description;

  single_popular({
    this.popular_name,
    this.popular_picture,
    this.popular_description
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
                    name: popular_name,
                    picture: popular_picture,
                    description: popular_description,
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
