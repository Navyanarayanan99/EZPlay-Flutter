import 'package:ezplay/bottomtab_screens/watchscreen/game_categories.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/other_video_streaming.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/popular_streamers.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/video_screen.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/watch_carousel.dart';
import 'package:ezplay/common/searchbar.dart';
import 'package:ezplay/components/videos_tending.dart';
import 'package:flutter/material.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key});

  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
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
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Searchbar(),
              SizedBox(
                height: 20,
              ),
              WatchCarousel(),
              SizedBox(
                height: 20,
              ),
               Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10.0),
                    child: Text(
                      'Popular Streamers',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              PopularStreamers(),
              SizedBox(
                height: 20,
              ),
                Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10.0),
                    child: Text(
                      'Game Cetegories',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GameCategories(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10.0), 
                    child: Text(
                      'Trending',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>VideoScreen() ));
                },
                child: Videos()),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10.0), 
                    child: Text(
                      'Other Video Streaming',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              OtherVideoStreaming()

            ],
          ),
        ),
      ),
    );
  }
}
