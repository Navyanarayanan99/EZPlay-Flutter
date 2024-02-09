import 'package:ezplay/toptabs/user_about_screen.dart';
import 'package:ezplay/toptabs/user_tournament_screen.dart';
import 'package:flutter/material.dart';

class ViewProfileScreen extends StatefulWidget {
  const ViewProfileScreen({super.key});

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              width: 500.0,
              height: 270.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image(
                          image: AssetImage('images/user-avatar.png'),
                          height: 30,
                          width: 30,
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image(
                      image: AssetImage('images/man.png'),
                      height: 90,
                      width: 90,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Sanjith',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text('Videos',
                            style: TextStyle(color: Colors.white, fontSize: 18))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 50,
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '6',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text('Tournaments',
                            style: TextStyle(color: Colors.white, fontSize: 18))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 50,
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '1026',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text('Followers',
                            style: TextStyle(color: Colors.white, fontSize: 18))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 50,
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '754',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Text('Following',
                            style: TextStyle(color: Colors.white, fontSize: 18))
                      ],
                    )
                  ],
                )
              ],
            ),
            Positioned(
              top: 270,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(   
                      text: 'Tournaments',
                    ),
                    Tab(
                      text: 'About',
                    ),
                  ],
                  labelColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 18),
                  indicatorColor: Colors.black,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.transparent, width: 0.0)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 0,
              right: 0,
              bottom: 0,
              child: Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Center(child: UserTournamentScreen()),
                    Center(child: UserAboutScreen()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
