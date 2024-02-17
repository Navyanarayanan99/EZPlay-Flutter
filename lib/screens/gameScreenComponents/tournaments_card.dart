import 'package:flutter/material.dart';

class TournamentsCard extends StatefulWidget {
  const TournamentsCard({super.key});

  @override
  State<TournamentsCard> createState() => _TournamentsCardState();
}

class _TournamentsCardState extends State<TournamentsCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 180,
        width: 380,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 68, 64, 64)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                    Text(
                      'PUBG Mobile Ultimate',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                        ),
                        Text(
                          '09 May, 12:00pm | Admin Name',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fixedSize: Size(90, 35)),
                    onPressed: () {},
                    child: Text(
                      'Join',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Container(
              width: 350,
              height: 8,
              child: LinearProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromARGB(255, 254, 146, 30)),
                value: 0.7,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('23spots left', style: TextStyle(color: Colors.grey)),
                SizedBox(
                  width: 110,
                ),
                Text('Total 100 spots', style: TextStyle(color: Colors.grey))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.emoji_events,
                  color: Colors.grey,
                ),
                Text(
                  '1,00,000',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.phone_android,
                  color: Colors.grey,
                ),
                Text('Mobile',
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.people,
                  color: Colors.grey,
                ),
                Text('Duo', style: TextStyle(color: Colors.grey, fontSize: 16)),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.emoji_events,
                  color: Colors.grey,
                ),
                Text('100', style: TextStyle(color: Colors.grey, fontSize: 16)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
