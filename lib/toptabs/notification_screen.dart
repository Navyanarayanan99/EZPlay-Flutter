import 'package:ezplay/common/searchbar.dart';
import 'package:ezplay/toptabs/lobby_screen.dart';
import 'package:ezplay/toptabs/others_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        actions: [
          Icon(
            Icons.notifications,
            size: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Searchbar(),
          Container(
            height: 60,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Lobby',
                ),
                Tab(
                  text: 'Others',
                ),
              ],
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 18),
              indicatorColor: Colors.red, 
              indicatorSize: TabBarIndicatorSize.tab, 
              indicatorWeight: 2.0, 
              unselectedLabelColor: Colors.grey, 
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.red, width: 2.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: LobbyScreen()),
                Center(child: OthersScreen()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
