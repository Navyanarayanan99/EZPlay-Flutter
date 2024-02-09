import 'package:ezplay/screens/gameScreenComponents/my_tournaments.dart';
import 'package:ezplay/screens/gameScreenComponents/posts.dart';
import 'package:ezplay/screens/gameScreenComponents/top_profile.dart';
import 'package:ezplay/screens/gameScreenComponents/tournaments.dart';
import 'package:ezplay/screens/gameScreenComponents/videos.dart';
import 'package:flutter/material.dart';

class PubGGameScreen extends StatefulWidget {
  const PubGGameScreen({Key? key}) : super(key: key);

  @override
  State<PubGGameScreen> createState() => _PubGGameScreenState();
}

class _PubGGameScreenState extends State<PubGGameScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white, size: 32),
        actions: const [
          Icon(Icons.wallet),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.share),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          TopProfile(),
          Container(
            height: 80,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Tournaments',
                ),
                Tab(
                  text: 'Videos',
                ),
                Tab(
                  text: 'Posts',
                ),
                Tab(
                  text: 'My Tournaments',
                ),
              ],
              labelColor: Colors.amber,
              labelStyle: const TextStyle(fontSize: 18),
              indicatorColor: Colors.amber, 
              indicatorWeight: 2, 
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: Tournaments()),
                Center(child: Videos()),
                Center(child: Posts()),
                Center(child: MyTournaments()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
