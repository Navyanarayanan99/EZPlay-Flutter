import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PopularStreamers extends StatelessWidget {
  final itemList = [
    Container(
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color.fromARGB(255, 64, 64, 64),
          child: Column(
            children: [
              Container(
                height: 140,
                width: 155,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 201, 6, 94),
                          Color.fromARGB(210, 237, 23, 23)
                        ]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )
                    ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Sanjith', style: TextStyle(color: Colors.white, fontSize: 17),),
                Text('90.7k Followers', style: TextStyle(color: Colors.grey, fontSize: 15),)
              ]),
            ],
          )),
    )
  ];
  PopularStreamers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.43,
          ),
          items: itemList,
        ),
      ),
    );
  }
}
