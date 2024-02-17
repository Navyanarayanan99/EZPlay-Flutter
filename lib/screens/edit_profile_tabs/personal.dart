import 'package:ezplay/components/textinput.dart';
import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      child: Container(
        child: Column(
          children: [
             TextInputField(labelText: 'User Name', prefixIcon: Icons.person_outline),
          TextInputField(labelText: 'Email', prefixIcon: Icons.email),
            TextInputField(labelText: 'Phone', prefixIcon: Icons.phone),
          TextInputField(labelText: 'DOB', prefixIcon: Icons.calendar_month),
            TextInputField(labelText: 'State', prefixIcon: Icons.location_on_outlined),
          TextInputField(labelText: 'City', prefixIcon: Icons.location_city),
          ],
        ),
      ),
    );
  }
}
