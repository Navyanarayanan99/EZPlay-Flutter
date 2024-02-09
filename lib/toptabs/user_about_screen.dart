import 'package:flutter/material.dart';

class UserAboutScreen extends StatefulWidget {
  const UserAboutScreen({super.key});

  @override
  State<UserAboutScreen> createState() => _UserAboutScreenState();
}

class _UserAboutScreenState extends State<UserAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Kochi, Vytila',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.cake,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '02/08/1997',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Member Since 02/08/2010',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Social Media',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage('images/whatsapp.png'),
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      'WhatsApp',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage('images/facebook.png'),
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage('images/instagram.png'),
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      'Instagram',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage('images/whatsapp.png'),
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      'Discord',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage('images/facebook.png'),
                      height: 25,
                      width: 25,
                    ),
                    Text(
                      'twitter',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 50,
                    width: 1,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Text(
                      'More',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
