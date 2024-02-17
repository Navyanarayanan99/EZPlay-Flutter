import 'package:ezplay/toptabs/chat_screen.dart';
import 'package:ezplay/toptabs/notification_screen.dart';
import 'package:ezplay/toptabs/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:ezplay/bottomtab_screens/account_screen.dart';
import 'package:ezplay/bottomtab_screens/gaming_screen.dart';
import 'package:ezplay/bottomtab_screens/play_screen_bottom.dart';
import 'package:ezplay/bottomtab_screens/watch_screen.dart';
import 'package:ezplay/screens/home_screen.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    BottomPlayScreen(),
    GamingScreen(),
    WatchScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    bool showAppBar = !(_screens[_currentIndex] is AccountScreen || _screens[_currentIndex] is WatchScreen);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: showAppBar
          ? AppBar(
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('images/splash.png'),
                    width: 35,
                    height: 35,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'EZPLAY ESPORTS',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen()));
                  },
                  icon: Icon(
                    Icons.wallet,
                    size: 25,
                  ),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                  icon: Icon(
                    Icons.message,
                    size: 23,
                  ),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                  icon: Icon(
                    Icons.notification_add,
                    size: 25,
                  ),
                  color: Colors.white,
                ),
                SizedBox(width: 5,)
              ],
            )
          : null,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
            ),
            label: 'Discover',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.gamepad,
            ),
            label: 'Play',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_sharp,
              size: 30,
            ),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_outline,
            ),
            label: 'Watch',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: 'Me',
            backgroundColor: Colors.black,
          ),
        ],
        iconSize: 25,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        selectedIconTheme: const IconThemeData(color: Colors.red),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
