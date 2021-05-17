import 'package:flutter/material.dart';
import 'package:furry_box/PAGES/pet_details.dart';

class dogs extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<dogs> {
  var dog_list = [
    {
      'name': 'Dobermann',
      'picture': 'assets/images/popular/Doberman.jpg',
      'description': 'The Dobermann,or Doberman Pinscher in the United States and Canada, is a medium-large breed of domestic dog that was originally developed around 1890 by Karl Friedrich Louis Dobermann, a tax collector from Germany. The Dobermann has a long muzzle. It stands on its pads and is not usually heavy-footed. Ideally, they have an even and graceful gait. Traditionally, the ears were cropped and posted and the tail was docked. However, in some countries, these procedures are now illegal. Dobermanns have markings on the chest, paws/legs, muzzle, above the eyes, and underneath the tail.'
    },
    {
      'name': 'Labrador Retriever',
      'picture': 'assets/images/dogs/LabradorRetrievers.jpg',
      'description': 'The Labrador Retriever, often abbreviated to Labrador, is a medium-large gun dog from the United Kingdom that was developed from imported Canadian fishing dogs. The Labrador is one of the most popular dog breeds in a number of countries in the world, particularly in the Western world. A popular disability assistance breed in many countries, Labradors are frequently trained to aid those with blindness or autism, act as a therapy dog, or perform screening and detection work for law enforcement and other official agencies.[1] The breed is best known for their obedience, loyalty, and playful composure. Additionally, they are prized as sporting and hunting dogs. Ancestors include a breed used in Newfoundland as fishing dogs, that would help in bringing in the fishing nets and recapture escaped fish.'
    },
    {
      'name': 'German Shepherd',
      'picture': 'assets/images/dogs/GermanShepherds.jpg',
      'description': 'The German Shepherd is a breed of medium to large-sized working dog that originated in Germany. According to the FCI, the breeds English language name is German Shepherd Dog. The breed was officially[who?] known as the "Alsatian Wolf Dog" in the UK from after the First World War until 1977 when its name was changed back to German Shepherd.[2] Despite its wolf-like appearance, the German Shepherd is a relatively modern breed of dog, with its origin dating to 1899.'
    },
    {
      'name': 'French Bulldogs',
      'picture': 'assets/images/dogs/FrenchBulldogs.jpg',
      'description': 'The French Bulldog (French: bouledogue or bouledogue français) is a breed of domestic dog, bred to be companion dogs. The breed is the result of a cross between Toy Bulldogs imported from England, and local ratters in Paris, France, in the 1800s. They are stocky, compact dogs with a friendly, mild-mannered temperament. The breed is popular as a pet: in 2019, they were the second-most popular registered dog in the United Kingdom, and the fourth-most popular AKC-registered dog breed in the United States. They were rated the third-most popular dog in Australia in 2017. In 2019, in the United Kingdom, the French Bulldog had 375 export pedigrees and a total of 33,661 registered dogs. By comparison, the Labrador Retriever had over 35,000 dogs and the Cocker Spaniel fewer than 22,000.'
    },
    {
      'name': 'Golden Retriever',
      'picture': 'assets/images/dogs/GoldenRetrievers.jpg',
      'description': 'The Golden Retriever is a medium-large gun dog that was bred to retrieve shot waterfowl, such as ducks and upland game birds, during hunting and shooting parties.The name "retriever" refers to the breeds ability to retrieve shot game undamaged due to their soft mouth. Golden retrievers have an instinctive love of water, and are easy to train to basic or advanced obedience standards. They are a long-coated breed, with a dense inner coat that provides them with adequate warmth in the outdoors, and an outer coat that lies flat against their bodies and repels water. Golden retrievers are well suited to residency in suburban or country environments.[4] They shed copiously, particularly at the change of seasons, and require fairly regular grooming. The Golden Retriever was originally bred in Scotland in the mid-19th century.'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: dog_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_popular(
            dog_name: dog_list[index]['name'],
            dog_picture: dog_list[index]['picture'],
            dog_description: dog_list[index]['description'],
          );
        });
  }
}

class single_popular extends StatelessWidget {
  final dog_name;
  final dog_picture;
  final dog_description;

  single_popular({
    this.dog_name,
    this.dog_picture,
    this.dog_description,

  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: dog_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new PetDetails(
                    name: dog_name,
                    picture: dog_picture,
                    description: dog_description,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new ListTile(
                      leading: Text(
                        dog_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    dog_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
