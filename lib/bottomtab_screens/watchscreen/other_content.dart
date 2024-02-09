import 'package:flutter/material.dart';

class OtherContent extends StatelessWidget {
  const OtherContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
        children: [
          Text('Donald Richards', style: TextStyle(color: Colors.grey, fontSize: 20),),
           Text('Lets Gooo', style: TextStyle(color: Colors.white, fontSize: 20),)
           ],
      ),
      SizedBox(height: 5,),
        Row(
        children: [
          Text('Ricardo Sherman', style: TextStyle(color: Colors.grey, fontSize: 20),),
           Text('YEP De', style: TextStyle(color: Colors.white, fontSize: 20),)
           ],
      ),
      SizedBox(height: 5,),
        Row(
        children: [
          Text('Sally West', style: TextStyle(color: Colors.grey, fontSize: 20),),
           Text('YEP De', style: TextStyle(color: Colors.white, fontSize: 20),)
           ],
      ),
      SizedBox(height: 5,),
        Row(
        children: [
          Text('Shawn Cobb', style: TextStyle(color: Colors.grey, fontSize: 20),),
           Text('Hi Guys', style: TextStyle(color: Colors.white, fontSize: 20),)
           ],
      ),
      SizedBox(height: 5,),
        Row(
        children: [
          Text('Rebecca Jones', style: TextStyle(color: Colors.grey, fontSize: 20),),
           Text('Beautiful girl', style: TextStyle(color: Colors.white, fontSize: 20),)
           ],
      ),
       SizedBox(height: 5,),
        Row(
        children: [
          Text('Shawn Cobb', style: TextStyle(color: Colors.grey, fontSize: 20),),
           Text('Hi Guys', style: TextStyle(color: Colors.white, fontSize: 20),)
           ],
      ),
      SizedBox(height: 5,),
        Row(
        children: [
          Text('Rebecca Jones', style: TextStyle(color: Colors.grey, fontSize: 20),),
           Text('Cool!!!! Shut down ', style: TextStyle(color: Colors.white, fontSize: 20),)
           ],
      ),
      ]),
    );
  }
}