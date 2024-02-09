import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Transaction History',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 120,
            ),
            Icon(
              Icons.pending_actions,
              color: Colors.grey,
              size: 25,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Card(
          color: Color.fromARGB(255, 26, 26, 26),
          child: SizedBox(
            height: 90,
            width: 375,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Withdraw',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      '02/02/2022',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '-200',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                )
              ],
            ),
          ),
        ),
        Card(
          color: Color.fromARGB(255, 26, 26, 26),
          child: SizedBox(
            height: 90,
            width: 375,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Credited',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      '01/02/2022',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '+500',
                  style: TextStyle(color: Colors.green, fontSize: 15),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
