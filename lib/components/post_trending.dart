import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final List<Widget> videoItems = [
    Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 133, 133, 133),
              Color.fromARGB(255, 39, 39, 39)
            ]),
      ),
      child:
          Column(
            mainAxisAlignment: MainAxisAlignment.end, children: [
        SizedBox(
          height: 30,
        ),
       Row(
  children: [
    Padding(padding: EdgeInsets.fromLTRB(5, 0, 10, 0)),
    Icon(
      Icons.account_circle,
      size: 70,
      color: Color.fromARGB(255, 218, 211, 211),
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Text(
          'PUBG Mobile',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Row(
          children: [
            Text(
              'Sanjith',
              style: TextStyle(
                  color: Color.fromARGB(255, 143, 138, 138),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.circle,
              color: Colors.blue,
              size: 13,
            )
          ],
        )
      ],
    )
  ],
)

      ]),
    ),
  ];

  Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: videoItems,
        options:
            CarouselOptions(height: 240, 
            //aspectRatio: 0.6, 
            viewportFraction: 0.87),
      ),
    );
  }
}
