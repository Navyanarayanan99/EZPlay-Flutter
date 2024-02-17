import 'package:ezplay/bottomtab_screens/watch_screen.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/game_categories.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/watch_carousel.dart';
import 'package:ezplay/common/searchbar.dart';
import 'package:ezplay/components/products_trending.dart';
import 'package:flutter/material.dart';

class GamingScreen extends StatefulWidget {
  const GamingScreen({super.key});

  @override
  State<GamingScreen> createState() => _GamingScreenState();
}

class _GamingScreenState extends State<GamingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Searchbar(),
              SizedBox(
                height: 20,
              ),
              WatchCarousel(),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Text(
                  'Popular Products',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                ),
              ]),
              ProductsTrending(),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                ),
              ]),
              GameCategories(),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                ),
              ]),
              ProductsTrending(),
            ],
          ),
        ));
  }
}
