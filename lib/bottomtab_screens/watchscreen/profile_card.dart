import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
     color: Color.fromARGB(255, 27, 27, 27)),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.fromLTRB(10, 5, 0, 5)),
        Row(
        children: [
          Icon(Icons.circle, size: 70, color: Colors.grey,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Sorammm', style: TextStyle(color: Colors.white, fontSize: 22),),
                  SizedBox(width: 5,),
                  Icon(Icons.check_circle, color: Color.fromARGB(255, 211, 122, 5),size: 18,)
                ],
              ),
              Text('Climax ID: 8823145', style: TextStyle(color: Colors.grey, fontSize: 15))
            
            ],
          ),
         SizedBox(width: 65,),
          ElevatedButton(onPressed: () {}, 
          child: Text('Following', style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            backgroundColor:  Color.fromARGB(255, 211, 122, 5),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            fixedSize: Size(110, 30)
          ),
          ),
        ],
      ),
      SizedBox(height: 20,),
      Text('Diamond Rank With Sorammm!!!', style: TextStyle(color: Colors.white, fontSize: 22), ),
       SizedBox(height: 20,),
       Row(
        children: [
          Container(
            width: 70,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black),
            child: Text('Soramm', style: TextStyle(color: Colors.grey,),),
          ),
 SizedBox(width: 10,),
           Container(
            width: 60,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black),
            child: Text('LOL', style: TextStyle(color: Colors.grey,),),
          ),
          SizedBox(width: 10,),
           Container(
            width: 130,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black),
            child: Text('League Of Legend', style: TextStyle(color: Colors.grey,),),
          ),
          SizedBox(width: 10,),
           Container(
            width: 100,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black),
            child: Text('Playing', style: TextStyle(color: Colors.grey,),),
          )
        ],
       )
      ],
     ),
    );
  }
}