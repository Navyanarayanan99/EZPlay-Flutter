import 'package:ezplay/components/featured_tournemnt_screen.dart';
import 'package:ezplay/components/post_trending.dart';
import 'package:ezplay/components/products_trending.dart';
import 'package:ezplay/components/profile_trending.dart';
import 'package:ezplay/components/videos_tending.dart';
import 'package:flutter/material.dart';

class TrendingTopTab extends StatefulWidget {
  const TrendingTopTab({super.key});

  @override
  State<TrendingTopTab> createState() => _TrendingTopTabState();
}

class _TrendingTopTabState extends State<TrendingTopTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Row(children: [
              Text(
                'Tournements',
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
            FeaturedTournement(),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Text(
                'Products',
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
             SizedBox(height: 15,),
            ProductsTrending(),
            SizedBox(height: 30,),
            Row(children: [
              Text(
                'Profile',
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
            SizedBox(height: 15,),
            Profiles(),
             SizedBox(height: 30,),
            Row(children: [
              Text(
                'Videos',
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
SizedBox(height: 15,),
            Videos(),

             SizedBox(height: 30,),
            Row(children: [
              Text(
                'Posts',
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
            SizedBox(height: 15,),
            Posts(),
          ],
        ),
      ),
    );
  }
}
