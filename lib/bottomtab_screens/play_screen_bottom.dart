import 'package:ezplay/screens/dashboard_screen.dart';
import 'package:ezplay/screens/playScreen.dart';
import 'package:flutter/material.dart';

class BottomPlayScreen extends StatefulWidget {
  const BottomPlayScreen({Key? key}) : super(key: key);

  @override
  _BottomPlayScreenState createState() => _BottomPlayScreenState();
}

class _BottomPlayScreenState extends State<BottomPlayScreen>
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
          Container(
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Play'),
                Tab(text: 'My Dashboard'),
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
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: PlayScreen()),
                Center(child: DashboardScreen()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
