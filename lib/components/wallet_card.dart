import 'package:flutter/material.dart';

class WalletCard extends StatefulWidget {
  const WalletCard({super.key});

  @override
  State<WalletCard> createState() => _WalletCardState();
}

class _WalletCardState extends State<WalletCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
         Card(
              color: Color.fromARGB(255, 26, 26, 26),
              child: SizedBox(
                height: 120,
                width: 450,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text('Total Balance', style: TextStyle(color: Colors.white, fontSize: 18)),

                        Row(
                          children: [
                            Icon(Icons.currency_exchange_rounded, color: Colors.grey,),
                            SizedBox(width: 8,),
                            Text('0',  style: TextStyle(color: Colors.white, fontSize: 35)),
                            SizedBox(width: 50,)
                          ],
                        )
                      ],
                    ),

                    SizedBox(width: 60,),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.white,
                      ),
                      label: Text(
                        'ADD COINS',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                              ),
                              fixedSize: Size(128, 20)
                              ),    
                    ),
                    
                  ],
                ),
              ),
            )
      ]),
    );
  }
}