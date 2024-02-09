import 'package:flutter/material.dart';

class UserTournamentScreen extends StatefulWidget {
  const UserTournamentScreen({super.key});

  @override
  State<UserTournamentScreen> createState() => _UserTournamentScreenState();
}

class _UserTournamentScreenState extends State<UserTournamentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 21, 21),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.currency_exchange_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '0',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      ),
                      Text(
                        'Total Earnings',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 21, 21, 21),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          'Tournament Won',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 21, 21, 21),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '156',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          'Tournament Played',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 21, 21, 21),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          'Games Played',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Card(
                          child: Container(
                            width: 42,
                            height: 60,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'PUBG MOBILE',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 250, 153, 26),
                                    Color.fromARGB(210, 246, 89, 4)
                                  ]),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
    );
  }
}