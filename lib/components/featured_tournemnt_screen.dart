import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeaturedTournement extends StatefulWidget {
  const FeaturedTournement({super.key});

  @override
  State<FeaturedTournement> createState() => _FeaturedTournementState();
}

class _FeaturedTournementState extends State<FeaturedTournement> {
  final itemList = [
    Container(
      padding: EdgeInsets.all(10),
      child: Card(
        color: Color.fromARGB(255, 64, 64, 64),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 250, 153, 26),
                                    Color.fromARGB(210, 246, 89, 4)
                                  ]),   
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              
                Text(
                  'Duo Premium',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                 SizedBox(width: 25,),
                Icon(
                  Icons.people,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(
                  Icons.schedule,
                  color: Colors.grey,
                ),
                Text(
                  '06 May, 01:20pm',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Prize',
                    style: TextStyle(color: Colors.grey, fontSize: 18)),
                Text('Type',
                    style: TextStyle(color: Colors.grey, fontSize: 18)),
                Text('Version',
                    style: TextStyle(color: Colors.grey, fontSize: 18))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("500",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Text('Solo',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Text('Mobile',
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Lobby',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    )),
                    SizedBox(width: 2.5,),
                Text(
                  'Entry Fee',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround, 
  children: [

    Row(
      children: [
        Icon(
          Icons.group,
          color: Colors.grey,
        ),
        Text(
          '40/50',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    ),
          SizedBox(width: 2,),
    Row(
      children: [
        Icon(
          Icons.currency_exchange_outlined,
          color: Colors.grey,
        ),
        Text(
          '200',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    ),
  ],
),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Join',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 196, 48, 37),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                fixedSize: Size(280, 50),
              ),
            ),
          ],
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: CarouselSlider(
            items: itemList,
            options: CarouselOptions(
                aspectRatio: 0.2, viewportFraction: 0.85, height: 460)),
      ),
    );
  }
}
