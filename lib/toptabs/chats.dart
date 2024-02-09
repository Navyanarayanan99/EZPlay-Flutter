import 'package:flutter/material.dart';
import 'package:ezplay/common/searchbar.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final chatList = [
    Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                  size: 60,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Umair',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Yo dude how are you doing today?',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
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
                    '2.26 pm',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 216, 1, 48),
                    ),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
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
                child: Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                  size: 60,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Umair',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Yo dude how are you doing today?',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
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
                    '2.26 pm',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 216, 1, 48),
                    ),
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Searchbar(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        backgroundColor: Color.fromARGB(255, 216, 1, 48),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
