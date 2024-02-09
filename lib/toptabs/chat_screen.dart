import 'package:ezplay/toptabs/chats.dart';
import 'package:ezplay/toptabs/contacts.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
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
        backgroundColor: Color.fromARGB(255, 38, 38, 38),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 38, 38, 38),
            ),
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Your Contacts',
                )
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
            children: [
              Center(child: Chats()),
              Center(child: Contacts()),
            ],
          ))
        ],
      ),
    );
  }
}
