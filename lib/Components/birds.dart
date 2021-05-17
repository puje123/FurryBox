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
      'description': 'The cockatiel (Nymphicus hollandicus), also known as weiro bird, or quarrion, is a small parrot that is a member of its own branch of the cockatoo family endemic to Australia. They are prized as household pets and companion parrots throughout the world and are relatively easy to breed. As a caged bird, cockatiels are second in popularity only to the budgerigar.'
    },
    {
      'name': 'Budgies',
      'picture': 'assets/images/birds/Budgies.jpg',
      'description': 'The budgerigar is a small, long-tailed, seed-eating parrot usually nicknamed the budgie , or in American English, the parakeet. Budgies are the only species in the genus Melopsittacus. Naturally, the species is green and yellow with black, scalloped markings on the nape, back, and wings. Budgies are bred in captivity with colouring of blues, whites, yellows, greys, and even with small crests. Juveniles and chicks are monomorphic, while adults are told apart by their cere colouring, and their behaviour.'
    },
    {
      'name': 'Canaries',
      'picture': 'assets/images/birds/Canaries.jpg',
      'description': 'The Atlantic canary (Serinus canaria), known worldwide simply as the wild canary and also called the island canary, common canary, or canary, is a small passerine bird belonging to the genus Serinus in the finch family, Fringillidae. It is native to the Canary Islands, the Azores, and Madeira. Wild birds are mostly yellow-green, with brownish streaking on the back. The species is common in captivity and a number of colour varieties have been bred. This bird is the natural symbol of the Canary Islands, together with the Canary Island date palm.'
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
            birds_description: birds_list[index]['description'],
          );
        });
  }
}

class single_popular extends StatelessWidget {
  final birds_name;
  final birds_picture;
  final birds_description;

  single_popular({
    this.birds_name,
    this.birds_picture,
    this.birds_description,
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
                        name: birds_name,
                        picture: birds_picture,
                        description: birds_description,
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
