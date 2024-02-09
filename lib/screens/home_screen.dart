import 'package:ezplay/screens/home_toptab.dart';
import 'package:ezplay/screens/trending_toptab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Home'),
              Tab(text: 'Trending'),
            ],
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 18),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Colors.red,
                width: 3.0,
              ),
              insets: EdgeInsets.symmetric(horizontal: 120),
            ),
            indicatorSize: TabBarIndicatorSize.label,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                HometopTab(),
                TrendingTopTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
