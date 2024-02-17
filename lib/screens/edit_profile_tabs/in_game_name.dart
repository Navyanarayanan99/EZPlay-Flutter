import 'package:ezplay/components/textinput.dart';
import 'package:flutter/material.dart';

class InGameName extends StatefulWidget {
  const InGameName({super.key});

  @override
  State<InGameName> createState() => _InGameNameState();
}

class _InGameNameState extends State<InGameName> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      child: Container(
        child: Column(
          children: [
            TextInputField(
                labelText: 'PSN(Play station network)',
                prefixIcon: Icons.gamepad),
            TextInputField(labelText: 'Pubg Mobile', prefixIcon: Icons.gamepad),
            TextInputField(labelText: 'Pubg PC', prefixIcon: Icons.gamepad),
            TextInputField(labelText: 'Free Fire', prefixIcon: Icons.gamepad),
            TextInputField(labelText: 'Fortnight', prefixIcon: Icons.gamepad),
            TextInputField(labelText: 'CS Go', prefixIcon: Icons.gamepad),
          ],
        ),
      ),
    );
  }
}
