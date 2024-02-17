import 'package:flutter/material.dart';

class TabbarVideosScreen extends StatefulWidget {
  const TabbarVideosScreen({super.key});

  @override
  State<TabbarVideosScreen> createState() => _TabbarVideosScreenState();
}

class _TabbarVideosScreenState extends State<TabbarVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(padding: EdgeInsets.all(8)),
          Row(
            children: [
              SizedBox(
                width: 6,
              ),
              Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'x_treamer_',
                        style: TextStyle(color: Colors.amber, fontSize: 20),
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: 20,
                      )
                    ],
                  ),
                  Text(
                    '2 hours',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                width: 170,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(26, 20, 0, 0)),
              Container(
                width: 300,
                height: 15,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Container(
                width: 360,
                height: 15,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Container(
                width: 250,
                height: 15,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Icon(
              Icons.play_circle_rounded,
              size: 50,
              color: const Color.fromARGB(255, 226, 43, 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
              Icon(
                Icons.favorite,
                color: Colors.white,
                size: 18,
              ),
              Text(
                '312.11 comments',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 80,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.grey),
                    ),
                    fixedSize: Size(165, 40),
                  ),
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                    size: 25,
                  ),
                  label: Text(
                    'PUBG MOBILE',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 1.5,
              width: 380,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 26,
                    color: Colors.grey,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.message,
                    size: 26,
                    color: Colors.grey,
                  ),
                  Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.reply_rounded,
                    size: 26,
                    color: Colors.grey,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
