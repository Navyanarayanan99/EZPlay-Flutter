import 'package:flutter/material.dart';

class WithdrawCard extends StatefulWidget {
  const WithdrawCard({super.key});

  @override
  State<WithdrawCard> createState() => _WithdrawCardState();
}

class _WithdrawCardState extends State<WithdrawCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Card(
          color: Color.fromARGB(255, 26, 26, 26),
          child: SizedBox(
            height: 150,
            width: 430,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Earnings',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_exchange_rounded,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('0',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 35)),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove,
                        size: 15,
                        color: Colors.white,
                      ),
                      label: Text(
                        'WITHDRAW',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          fixedSize: Size(128, 20)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1,
                    width: 500,
                    color: const Color.fromARGB(255, 83, 82, 82),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(30, 20, 0, 20)),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(width: 3,),
                    Icon(
                      Icons.currency_exchange_outlined,
                      size: 15,
                      color: Colors.grey,
                    ),
                     SizedBox(width: 3,),
                    Text(
                      '=',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                     SizedBox(width: 3,),
                    Text(
                      '₹1',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
