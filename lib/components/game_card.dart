import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GameCardScreen extends StatefulWidget {
  const GameCardScreen({super.key});

  @override
  State<GameCardScreen> createState() => _GameCardScreenState();
}

class _GameCardScreenState extends State<GameCardScreen> {
  final gameItem = [
    Container(
      width: 180,
      padding: EdgeInsets.fromLTRB(30, 170, 0, 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 250, 153, 26),
                Color.fromARGB(210, 246, 89, 4)
              ]),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        'PUBG \nMOBILE',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
    Container(
      width: 180,
      padding: EdgeInsets.fromLTRB(30, 170, 0, 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 160, 219, 249),
                Color.fromARGB(255, 9, 146, 215),
              ]),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        'GARENA \nFREEFIRE',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
    Container(
      width: 180,
      padding: EdgeInsets.fromLTRB(30, 170, 0, 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 246, 201, 66),
                Color.fromARGB(255, 242, 183, 7),
              ]),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        'PUBG \nMOBILE',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
    Container(
      width: 180,
      padding: EdgeInsets.fromLTRB(30, 170, 0, 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(44, 106, 85, 209),
                Color.fromARGB(45, 88, 148, 239),
              ]),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        'PUBG \nMOBILE',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: gameItem,
        options: CarouselOptions(
          height: 240,
          aspectRatio: 0.5,
          viewportFraction: 0.55,
        ),
      ),
    );
  }
}
