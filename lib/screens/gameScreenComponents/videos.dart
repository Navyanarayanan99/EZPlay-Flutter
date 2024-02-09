import 'package:ezplay/components/home_posts.dart';
import 'package:ezplay/screens/gameScreenComponents/videos_screen_tabbar.dart';
import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(children: [
          TabbarVideosScreen(),
          SizedBox(height: 20,),
          TabbarVideosScreen(),
        ]),
      ),
    );
  }
}