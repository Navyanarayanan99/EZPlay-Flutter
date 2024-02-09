import 'package:ezplay/common/searchbar.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
                    '+91 9867478393',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'INVITE',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: Size(95, 15)),
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
                    '+91 9867478393',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'INVITE',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: Size(95, 15)),
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
    );
  }
}
