import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 38, 38, 38),
        borderRadius: BorderRadius.circular(8.0), 
      ),
      child: TextField(
        onChanged: (value) {
          setState(() {
           
          });
        },
        decoration: InputDecoration(
          hintText: 'Search for Users',
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Colors.grey,
          border: InputBorder.none, 
        ),
      ),
    );
  }
}
