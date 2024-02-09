import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WatchCarousel extends StatefulWidget {
  WatchCarousel({Key? key}) : super(key: key);

  @override
  _WatchCarouselState createState() => _WatchCarouselState();
}

class _WatchCarouselState extends State<WatchCarousel> {
  final _controller = PageController();
  final item = [
    Container(
      width: 300,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
         gradient: LinearGradient(begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
            const Color.fromARGB(255, 255, 168, 37),
          const Color.fromARGB(255, 165, 99, 1),
        ]
        ),
          
          borderRadius: BorderRadius.circular(8)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FIFA 20',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'ULTIMATE TOURNAMENT',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'JOIN NOW',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    ),
    Container(
      width: 300,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
            Color.fromARGB(255, 252, 103, 250),
           Color.fromARGB(255, 255, 0, 106),
        ]
        ),
        
          borderRadius: BorderRadius.circular(8)),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'FIFA 21',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        Text(
          'ULTIMATE TOURNAMENT',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        Text(
          'JOIN NOW',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ]),
    ),
    Container(
      padding: EdgeInsets.all(8),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
         gradient: LinearGradient(begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
           Color.fromARGB(255, 47, 211, 32),
          Color.fromARGB(255, 8, 57, 3),
        ]
        ),
       
      ),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'FIFA 25',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        Text(
          'ULTIMATE TOURNAMENT',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Text(
          'JOIN NOW',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ]),
    ),
    Container(
      width: 300,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 127, 15, 255),
           Color.fromARGB(255, 31, 8, 58),
        ]
        ),
       
      ),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'FIFA 21',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        Text(
          'ULTIMATE TOURNAMENT',
          style: TextStyle(fontSize: 20, color: Colors.white),
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
    return Column(
      children: [
        Container(
          child: CarouselSlider(
            items: item,
            options: CarouselOptions(
              height: 180,
              aspectRatio: 1.0,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
            ),
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
      ],
    );
  }
}