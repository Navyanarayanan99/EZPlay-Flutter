import 'package:flutter/material.dart';

class OtherVideoStreaming extends StatefulWidget {
  const OtherVideoStreaming({super.key});

  @override
  State<OtherVideoStreaming> createState() => _OtherVideoStreamingState();
}

class _OtherVideoStreamingState extends State<OtherVideoStreaming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: <Widget>[
          // Container(
          //   width: 200,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(8),
          //     gradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         colors: [
          //           Color.fromARGB(255, 133, 133, 133),
          //           Color.fromARGB(255, 39, 39, 39)
          //         ]),
          //   ),
          //   child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Row(
          //           children: [
          //             Padding(padding: EdgeInsets.fromLTRB(5, 0, 10, 0)),
          //             Container(
          //               width: 50,
          //               height: 30,
          //               decoration: BoxDecoration(
          //                   color: const Color.fromARGB(255, 247, 47, 33)),
          //               alignment: Alignment.center,
          //               child: Text(
          //                 'Live',
          //                 style: TextStyle(color: Colors.white),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 10,
          //             ),
          //             Container(
          //                 width: 90,
          //                 height: 30,
          //                 decoration: BoxDecoration(
          //                     color: Color.fromARGB(255, 51, 53, 64)),
          //                 alignment: Alignment.center,
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: [
          //                     Icon(
          //                       Icons.remove_red_eye,
          //                       color: Colors.white,
          //                       size: 19,
          //                     ),
          //                     SizedBox(
          //                       width: 8,
          //                     ),
          //                     Text(
          //                       '2,256',
          //                       style: TextStyle(color: Colors.white),
          //                     )
          //                   ],
          //                 )),
          //             SizedBox(
          //               width: 10,
          //             ),
          //             Container(
          //                 width: 130,
          //                 height: 30,
          //                 decoration: BoxDecoration(
          //                     color: Color.fromARGB(255, 51, 53, 64)),
          //                 alignment: Alignment.center,
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   children: [
          //                     Image(
          //                       image: AssetImage(
          //                         'images/battle.jpg',
          //                       ),
          //                       height: 30,
          //                       width: 25,
          //                     ),
          //                     SizedBox(
          //                       width: 8,
          //                     ),
          //                     Text(
          //                       'PUBG Mobile',
          //                       style: TextStyle(color: Colors.white),
          //                     )
          //                   ],
          //                 ))
          //           ],
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         Row(
          //           children: [
          //             Padding(padding: EdgeInsets.fromLTRB(5, 0, 10, 0)),
          //             Icon(
          //               Icons.account_circle,
          //               size: 70,
          //               color: Color.fromARGB(255, 218, 211, 211),
          //             ),
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'PUBG Mobile',
          //                   style: TextStyle(color: Colors.white, fontSize: 20),
          //                 ),
          //                 Row(
          //                   children: [
          //                     Text(
          //                       'Sanjith',
          //                       style: TextStyle(
          //                           color: Color.fromARGB(255, 143, 138, 138),
          //                           fontSize: 18,
          //                           fontWeight: FontWeight.w600),
          //                     ),
          //                     SizedBox(
          //                       width: 5,
          //                     ),
          //                     Icon(
          //                       Icons.circle,
          //                       color: Colors.blue,
          //                       size: 13,
          //                     )
          //                   ],
          //                 )
          //               ],
          //             )
          //           ],
          //         )
          //       ]),
          // ),
        ],
      ),
    );
  }
}
