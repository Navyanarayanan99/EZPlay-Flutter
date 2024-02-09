import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezplay/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousal extends StatefulWidget {
  const Carousal({Key? key}) : super(key: key);

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  final myitems = [
    Image.asset(
      'images/battle.jpg',
      height: 350,
      width: 600,
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/freefire.jpg',
      height: 350,
      width: 600,
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/valorant1.jpg',
      height: 350,
      width: 600,
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/callofduty.jpg',
      height: 350,
      width: 600,
      fit: BoxFit.cover,
    ),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  // autoPlay: true,
                  height: 350,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  // aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myitems,
              ),
              SizedBox(
                height: 30,
              ),
              AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: myitems.length,
                effect: WormEffect(
                  dotHeight: 15,
                  dotWidth: 15,
                  spacing: 15,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,
                  paintStyle: PaintingStyle.stroke,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Skip')),
              SizedBox(
                height: 70,
              ),
              Text(
                'App Update Availble',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download, color: Colors.amber),
                  Padding(padding: EdgeInsets.fromLTRB(0, 40, 10, 10)),
                  Text(
                    'Downloading...85%',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              Container(
                width: 350,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
