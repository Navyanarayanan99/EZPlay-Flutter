import 'package:ezplay/bottomtab_screens/watchscreen/other_content.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/profile_card.dart';
import 'package:ezplay/bottomtab_screens/watchscreen/video_play.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
      ),

      body: SingleChildScrollView(
        child: Column(children: [
          VideoPlay(),
          ProfileCard(),
          OtherContent()
        ]),
      ),
    );
  }
}
