import 'package:ezplay/screens/gameScreenComponents/tournaments_card.dart';
import 'package:flutter/material.dart';

class Tournaments extends StatefulWidget {
  const Tournaments({super.key});

  @override
  State<Tournaments> createState() => _TournamentsState();
}

class _TournamentsState extends State<Tournaments> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Row(
            children: [
              Text('Today',
                  style: TextStyle(color: Colors.white, fontSize: 22)),
              SizedBox(
                width: 180,
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.list,
                    size: 32,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TournamentsCard(),
          SizedBox(
            height: 10,
          ),
          TournamentsCard(),
          SizedBox(
            height: 10,
          ),
          TournamentsCard(),
        ]),
      ),
    );
  }
}
