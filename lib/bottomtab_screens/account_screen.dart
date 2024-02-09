import 'package:ezplay/screens/view_profile_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 33,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 90,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Text(
                        'Sanjith',
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewProfileScreen()));
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'View Profile',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '1',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text('Tournaments',
                          style: TextStyle(fontSize: 16, color: Colors.grey))
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text('Following',
                          style: TextStyle(fontSize: 16, color: Colors.grey))
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text('Followers',
                          style: TextStyle(fontSize: 16, color: Colors.grey))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                      )),
                  Text(
                    'Tell Friends About EZ Play',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage('images/whatsapp.png'),
                        width: 28,
                        height: 28,
                      ),
                      Text('WhatsApp',
                          style: TextStyle(fontSize: 15, color: Colors.white))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 70,
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('images/facebook.png'),
                        width: 28,
                        height: 28,
                      ),
                      Text('Facebook',
                          style: TextStyle(fontSize: 15, color: Colors.white))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 70,
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Text('More',
                          style: TextStyle(fontSize: 15, color: Colors.white))
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1,
                  width: 500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.groups,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'My Teams',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_events,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'My Tournaments',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.subscriptions,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'My Subscription',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.people,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'Refer and Earn',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.airport_shuttle,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'Order Status',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.privacy_tip,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'Privacy Policy',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.question_answer,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'FAQ / Support',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.content_paste,
                            color: Colors.grey,
                            size: 24,
                          ),
                          label: Text(
                            'Terms and conditions',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
