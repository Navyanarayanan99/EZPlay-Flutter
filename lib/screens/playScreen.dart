import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezplay/components/featured_tournemnt_screen.dart';
import 'package:ezplay/components/game_card.dart';
import 'package:ezplay/screens/view_all_games.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  final _controller = PageController();
  final item = [
    Container(
      width: 280,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(8)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FIFA 20',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'ULTIMATE TOURNAMENT',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            'JOIN NOW',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    ),
    Container(
      width: 280,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 81, 0),
          borderRadius: BorderRadius.circular(8)),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'FIFA 21',
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        Text(
          'ULTIMATE TOURNAMENT',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          'JOIN NOW',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ]),
    ),
    Container(
      padding: EdgeInsets.all(8),
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(255, 12, 117, 2),
      ),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'FIFA 25',
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        Text(
          'ULTIMATE TOURNAMENT',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Text(
          'JOIN NOW',
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ]),
    ),
    Container(
      width: 280,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 119, 0, 255),
      ),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'FIFA 21',
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        Text(
          'ULTIMATE TOURNAMENT',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          'JOIN NOW',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ]),
    )
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CarouselSlider(
              items: item,
              options: CarouselOptions(
                height: 95,
                aspectRatio: 1.0,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AnimatedSmoothIndicator(
              activeIndex: myCurrentIndex,
              count: item.length,
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                spacing: 10,
                dotColor: Colors.grey,
                activeDotColor: Colors.white,
                paintStyle: PaintingStyle.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Text(
                  'Games',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewAllGames()));
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                ),
              ]),
            ),
            GameCardScreen(),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Text(
                  'Featured Tournements',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                ),
              ]),
            ),
            FeaturedTournement(),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Text(
                  'Friends Who Joined',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                ),
              ]),
            ),
            FeaturedTournement(),
          ],
        ),
      ),
    );
  }
}
