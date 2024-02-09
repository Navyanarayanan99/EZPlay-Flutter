import 'package:flutter/material.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 133, 133, 133),
              Color.fromARGB(255, 39, 39, 39)
            ]),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 0, 10, 0)),
            Container(
              width: 40,
              height: 25,
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 247, 47, 33)),
              alignment: Alignment.center,
              child: Text(
                'Live',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Container(
                width: 70,
                height: 25,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 51, 53, 64)),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '2,256',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                )),
            SizedBox(
              width: 7,
            ),
            Container(
              width: 110,
              height: 25,
              decoration: BoxDecoration(color: Color.fromARGB(255, 51, 53, 64)),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(
                      'images/battle.jpg',
                    ),
                    height: 30,
                    width: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'PUBG Mobile',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.reply,
                  size: 30,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 150,
        ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite,
                  size: 25,
                  color: Colors.red,
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.message,
                  size: 25,
                  color: Colors.white,
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.open_in_full,
                  size: 25,
                  color: Colors.white,
                ),
                 SizedBox(width: 10,),
              ],
            )
      ]),
    );
  }
}
