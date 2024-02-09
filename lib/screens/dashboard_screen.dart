import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Text(
                  'My Stats',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            GridView.count(
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
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                child: Text(
                  'My Teams',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Create Team',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 21, 21, 21),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    fixedSize: Size(180, 55),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Container(
                    width: 42,
                    height: 55,
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(6),
                    child: Text(
                      'Team 1',
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
                ),
                Card(
                  child: Container(
                    width: 42,
                    height: 55,
                    alignment: Alignment.bottomLeft,
                     padding: EdgeInsets.all(6),
                    child: Text(
                      'Team 2',
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
                ),
                Card(
                  child: Container(
                    width: 42,
                    height: 55,
                    alignment: Alignment.bottomLeft,
                     padding: EdgeInsets.all(6),
                    child: Text(
                      'Team 3',
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
