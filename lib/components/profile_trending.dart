import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Profiles extends StatefulWidget {
  Profiles({super.key});

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  bool isFollowing =false;
  
  final profileItem = [
    Container(
      width: 180,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Icon(
            Icons.account_circle,
            size: 110,
            color: Colors.grey,
          ),
          SizedBox(height: 8),
         Container(
          width: 130,
          height: 18,
          decoration: BoxDecoration(color:Colors.grey ),
         ),
         SizedBox(height: 10,),
          Container(
          width: 150,
          height: 15,
          decoration: BoxDecoration(color:Colors.grey ),
         ),
         SizedBox(height: 10,),
         ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
      side: BorderSide(color: Colors.grey), 
    ),
    fixedSize: Size(155, 40),
  ),
  onPressed: () {},
  child: Text('Following', style: TextStyle(color: Colors.white, fontSize: 20),),
)


        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: profileItem,
        options: CarouselOptions(
          height: 240,
          aspectRatio: 0.5,
          viewportFraction: 0.55,
        ),
      ),
    );
  }
}
