import 'package:ezplay/components/home_posts.dart';
import 'package:flutter/material.dart';

class HometopTab extends StatefulWidget {
  const HometopTab({super.key});

  @override
  State<HometopTab> createState() => _HometopTabState();
}

class _HometopTabState extends State<HometopTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          HomePosts(),
          SizedBox(height: 30,),
          HomePosts()
        ]),
      ),
    );
  }
}
