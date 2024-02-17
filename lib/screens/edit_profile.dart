import 'package:ezplay/screens/edit_profile_tabs/in_game_name.dart';
import 'package:ezplay/screens/edit_profile_tabs/personal.dart';
import 'package:ezplay/screens/edit_profile_tabs/social.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                SizedBox(
                  width: 220,
                ),
                Row(
                  children: [
                    Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Icon(
                      Icons.save,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Stack(
                  children: [
                    Image(
                      image: AssetImage('images/man.png'),
                      height: 90,
                      width: 90,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 28,
                        color: const Color.fromARGB(255, 169, 16, 5),
                      ),
                    ),
                  ],
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
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Edit Cover',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                Icon(
                  Icons.camera_alt_rounded,
                  size: 28,
                  color: const Color.fromARGB(255, 169, 16, 5),
                ),
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
                      text: 'Personal',
                    ),
                    Tab(
                      text: 'In-Game Name',
                    ),
                    Tab(
                      text: 'Social',
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
                    Center(child: Personal()),
                    Center(child: InGameName()),
                    Center(child: Social()),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
