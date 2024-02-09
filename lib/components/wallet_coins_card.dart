import 'package:flutter/material.dart';

class WalletCoinsCard extends StatelessWidget {
  const WalletCoinsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Card(
          color: Color.fromARGB(255, 26, 26, 26),
          child: SizedBox(
            width: 180,
            height: 180,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.currency_exchange_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  )
                ],
              ),
              Text(
                'Coins Deposited',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ]),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Card(
          color: Color.fromARGB(255, 26, 26, 26),
          child: SizedBox(
            width: 180,
            height: 180,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.currency_exchange_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  )
                ],
              ),
              Text(
                'Bonus Coins',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
