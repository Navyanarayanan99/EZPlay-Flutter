import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductsTrending extends StatelessWidget {
  final itemList = [
    Container(
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          color: Color.fromARGB(255, 64, 64, 64),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 170,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 250, 153, 26),
                          Color.fromARGB(210, 246, 89, 4)
                        ]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('PUBG Knife', style: TextStyle(color: Colors.white, fontSize: 17),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Colors.white,
                        ),
                        SizedBox(width: 3,),
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Color.fromARGB(255, 214, 212, 212),
                        ),
                        SizedBox(width: 3,),
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Color.fromARGB(255, 39, 26, 26),
                        ),
                        SizedBox(width: 3,),
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Color.fromARGB(255, 202, 201, 201),
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Text('Small', style: TextStyle(color: Colors.white),)
                  ],
                )
              ]),
            ],
          )),
    )
  ];
  ProductsTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 220,
            //aspectRatio: 0.5,
            viewportFraction: 0.46,
          ),
          items: itemList,
        ),
      ),
    );
  }
}
