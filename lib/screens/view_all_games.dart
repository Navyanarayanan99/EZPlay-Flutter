import 'package:ezplay/common/searchbar.dart';
import 'package:ezplay/components/modal.dart';
import 'package:ezplay/screens/game_screen_pubg.dart';
import 'package:flutter/material.dart';

class ViewAllGames extends StatelessWidget {
  final List _texts = [
    Data(text: 'PUBG\n   MOBILE'),
    Data(text: 'GARENA \n FREEFIRE'),
    Data(text: '  CALL OF\nDUTY'),
    Data(text: 'GARENA \n FREEFIRE'),
    Data(text: 'PUBG\n   MOBILE'),
    Data(text: 'PUBG\n   MOBILE'),
    Data(text: 'PUBG\n   MOBILE'),
    Data(text: 'PUBG\n   MOBILE'),
  ];

  final List<Gradient> _gradients = [
    LinearGradient(colors: [Colors.amber, Colors.yellow]),
    LinearGradient(colors: [Colors.blue, Colors.lightBlue]),
    LinearGradient(colors: [Colors.green, Colors.lightGreen]),
    LinearGradient(colors: [Colors.red, Colors.pink]),
    LinearGradient(colors: [Colors.orange, Colors.deepOrange]),
    LinearGradient(colors: [Colors.purple, Colors.deepPurple]),
    LinearGradient(colors: [Colors.blue, Colors.lightBlue]),
    LinearGradient(colors: [Colors.yellow, Colors.amber]),
  ];

  ViewAllGames({Key? key});

  @override
  Widget build(BuildContext context) {
     //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Searchbar(),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: _texts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PubGGameScreen()));
                    },
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: _gradients[index % _gradients.length],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 120, 80, 0),
                        child: Text(
                          _texts[index].text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
