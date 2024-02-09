import 'package:flutter/material.dart';

class TopProfile extends StatefulWidget {
  const TopProfile({super.key});

  @override
  State<TopProfile> createState() => _TopProfileState();
}

class _TopProfileState extends State<TopProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Row(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 10)),
            Container(
              width: 110,
              height: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient:
                    LinearGradient(colors: [Colors.orange, Colors.deepOrange]),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PUBG : Mobile',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
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
                          '2438',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        Text('Post',
                            style: TextStyle(fontSize: 16, color: Colors.grey))
                      ],
                    ),
                    SizedBox(width: 27),
                    Column(
                      children: [
                        Text(
                          '33K',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        Text('Followers',
                            style: TextStyle(fontSize: 16, color: Colors.grey))
                      ],
                    ),
                    SizedBox(width: 27),
                    Column(
                      children: [
                        Text(
                          '13',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        Text('Videos',
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
                    Text(
                      'Sreedhar: ',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 10)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 214, 151, 3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    fixedSize: Size(180, 30)),
                onPressed: () {},
                child: Text('Following', style: TextStyle(color: Colors.black, fontSize: 18),)),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    fixedSize: Size(180, 30),
                     side: BorderSide(color:  Color.fromARGB(255, 214, 151, 3),),),
                  
                onPressed: () {},
                child: Text('Launch', style: TextStyle(color:  Color.fromARGB(255, 214, 151, 3), fontSize: 18))),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
             Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 10)),
            Text('How to Play', style: TextStyle(color: Colors.grey, fontSize: 18),),
          Icon(Icons.report_gmailerrorred, size: 30, color: Colors.grey,)
          ],
        )
      ],
    );
  }
}
