import 'package:ezplay/components/textinput.dart';
import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      child: Container(
        child: Column(
          children: [
            TextInputField(
                labelText: 'Facebook',
                prefixIcon: Icons.facebook),
            TextInputField(labelText: 'Instagram', prefixIcon: Icons.facebook),
            TextInputField(labelText: 'Twitter', prefixIcon: Icons.facebook),
            TextInputField(labelText: 'Youtube', prefixIcon: Icons.play_circle_fill),
            TextInputField(labelText: 'WhatsApp', prefixIcon: Icons.gamepad),
            
          ],
        ),
      ),
    );
  }
}
