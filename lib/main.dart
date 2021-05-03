import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//MY IMPORTS
import 'package:furry_box/Components/horizontal_listview.dart';
import 'package:furry_box/Components/popular.dart';

import 'PAGES/catagor.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/slider/1.jpg'),
          AssetImage('assets/images/slider/2.jpg'),
          AssetImage('assets/images/slider/3.jpg'),
          AssetImage('assets/images/slider/4.jpg'),
          AssetImage('assets/images/slider/5.jpg'),
          AssetImage('assets/images/slider/6.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 900),
        dotSize: 3,
        indicatorBgPadding: 5,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange[600],
        title: Text('Furry Box 1.0'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
//PUJEGIN DRAWER HEADER

            UserAccountsDrawerHeader(
              accountName: Text('Mighty Puje'),
              accountEmail: Text('nzireus@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrange[500],
              ),
            ),

//BODY
            InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => new HomePage())),
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Catagor(animal: 'dog',))),
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.deepOrange,
                ),
              ),
            ),

            Divider(),
          ],
        ),
      ),
      body: ListView(
        children: [
          image_carousel,

//PADDING

          Padding(
            padding: const EdgeInsets.all(8),
            child: Text('Categories'),
          ),

//HORIZONTAL

          HorizontalList(),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Popular'),
          ),

//GRID VIEW
          Container(
            height: 320,
            child: popular(),
          )
        ],
      ),
    );
  }
}