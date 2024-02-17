import 'package:ezplay/screens/gameScreenComponents/tournaments_card.dart';
import 'package:flutter/material.dart';

class MyTournaments extends StatefulWidget {
  const MyTournaments({super.key});

  @override
  State<MyTournaments> createState() => _MyTournamentsState();
}

class _MyTournamentsState extends State<MyTournaments> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          TournamentsCard(),
          SizedBox(
            height: 10,
          ),
          TournamentsCard(),
          SizedBox(
            height: 10,
          ),
          TournamentsCard()
        ],
      ),
    );
  }
}
