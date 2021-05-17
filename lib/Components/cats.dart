import 'package:flutter/material.dart';
import 'package:furry_box/PAGES/pet_details.dart';

class cats extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<cats> {
  var cat_list = [
    {
      'name': 'Khao Manee',
      'picture': 'assets/images/cats/Khaomanee.jpg',
      'description': 'The Khao Manee cat (Thai: ขาวมณี, RTGS: Khao Mani, lit. "white gem"), or Khao Plort (Thai: ขาวปลอด, lit. "complete white"), also known as the Diamond Eye cat, is a rare breed of cat originating in Thailand, which has an ancient ancestry tracing back hundreds of years. They are mentioned in the Tamra Maew, or Cat Book Poems. Khao Manee cats are pure white with a short, smooth, close-lying coat. They can have blue eyes, gold eyes or odd-eyes with one of each colour. The odd-eyed Khao Manee is the rarest variety. They are muscular, athletic cats of moderate foreign type and are reputed to be active, communicative and intelligent.'
    },
    {
      'name': 'Bengal',
      'picture': 'assets/images/popular/Bengal.jpg',
      'description': 'The Bengal cat is a domesticated cat breed created from hybrids of domestic cats, especially the spotted Egyptian Mau, with the Asian leopard cat (Prionailurus bengalensis). The breed name comes from the leopard cats taxonomic name. Bengals have a wild appearance; their golden shimmer comes from their leopard cat ancestry, and their coats may show spots, rosettes, arrowhead markings, or marbling. They are an energetic breed which needs much exercise and play.'
    },
    {
      'name': 'Siamese',
      'picture': 'assets/images/cats/Siamese.jpg',
      'description': ' The Siamese cat is one of the first distinctly recognized breeds of Asian cat. Derived from the Wichianmat landrace, one of several varieties of cat native to Thailand (formerly known as Siam), the original Siamese became one of the most popular breeds in Europe and North America in the 19th century. The carefully refined, more extreme-featured, modern-style Siamese is characterized by blue almond-shaped eyes; a triangular head shape; large ears; an elongated, slender, and muscular body; and various forms of point colouration. Other than colouration, the modern-style Siamese bears little resemblance to the original stock, and the more moderate, traditional, or "old-style" Siamese, with a much rounder head and body, has been re-established by multiple registries as the Thai cat. The International Cat Association describes the modern Siamese as affectionate, social, intelligent, and playful into adulthood, often enjoying a game of fetch.[1] Siamese tend to seek human interaction and also like companionship from other cats.'
    },
    {
      'name': 'Sphynx',
      'picture': 'assets/images/cats/Sphynx.jpg',
      'description': ' The Sphynx cat, or simply Sphynx, is a breed of cat known for its lack of fur. Hairlessness in cats is a naturally occurring genetic mutation, and the Sphynx was developed through selective breeding of these animals, starting in the 1960s.[1] According to breed standards, the skin should have the texture of chamois leather, as it has fine hairs, or the cat may be completely hairless. Whiskers may be present, either whole or broken, or may be totally absent. The cats have a narrow, long head and webbed feet. Their skin is the color that their fur would be, and all the usual cat markings (solid, point, van, tabby, tortie, etc.) may be found on the Sphynx cats skin. Because they have no fur they lose more body heat than coated cats which makes them warm to the touch and prone to finding warm places.'
    },
    {
      'name': 'Persian ',
      'picture': 'assets/images/cats/Persian.jpg',
      'description': 'The Persian cat (گربه ایرانی) is a long-haired breed of cat characterized by its round face and short muzzle. It is also known as the "Persian Longhair" in the English-speaking countries. The first documented ancestors of the Persian were imported into Italy from Persia around 1620.Recognized by the cat fancy since the late 19th century, it was developed first by the English, and then mainly by American breeders after the Second World War. Some cat fancier organizations breed standards subsume the Himalayan and Exotic Shorthair as variants of this breed, while others treat them as separate breeds. The selective breeding carried out by breeders has allowed the development of a wide variety of coat colors, but has also led to the creation of increasingly flat-faced Persians. Favored by fanciers, this head structure can bring with it a number of health problems. As is the case with the Siamese breed, there have been efforts by some breeders to preserve the older type of cat, the traditional breed, having a more pronounced muzzle, which is more popular with the general public. Hereditary polycystic kidney disease is prevalent in the breed, affecting almost half the population in some countries.'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: cat_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_popular(
            cat_name: cat_list[index]['name'],
            cat_picture: cat_list[index]['picture'],
            cat_description: cat_list[index]['description'],
          );
        });
  }
}

class single_popular extends StatelessWidget {
  final cat_name;
  final cat_picture;
  final cat_description;

  single_popular({
    this.cat_name,
    this.cat_picture,
    this.cat_description,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: cat_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new PetDetails(
                    name: cat_name,
                    picture: cat_picture,
                    description: cat_description,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new ListTile(
                      leading: Text(
                        cat_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    cat_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
