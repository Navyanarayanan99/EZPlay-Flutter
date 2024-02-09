import 'package:flutter/material.dart';

class OthersScreen extends StatelessWidget {
  const OthersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatList = [
    Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image(image: AssetImage('images/photo.png'),
                 width: 60,
                 height: 60,
                 )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Order successfully placed',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Order ID',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Yesterday',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text('10.11am', style: TextStyle(color: Colors.grey, fontSize: 13),)
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 0.3,
              width: 320,
              color: const Color.fromARGB(255, 95, 95, 95),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
               child: Image(image: AssetImage('images/photo.png'),
                 width: 60,
                 height: 60,
                 )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Order successfully placed',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Order ID',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Yesterday',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text('10.11am', style: TextStyle(color: Colors.grey, fontSize: 13),)
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 0.3,
              width: 320,
              color: const Color.fromARGB(255, 95, 95, 95),
            ),
          ),
        ],
      ),
    ),
  ];


    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (BuildContext context, int index) {
                return chatList[index];
              },
            ),
          ),
        ],
      ),
    );

  }
}