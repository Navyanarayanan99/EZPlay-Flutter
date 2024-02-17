import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;

  const TextInputField({required this.labelText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 10)),
        Text(
          labelText,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Type Here',
            hintStyle:
                TextStyle(color: const Color.fromARGB(255, 126, 126, 126)),
            filled: true,
            fillColor: Color.fromARGB(255, 33, 32, 32),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.grey,
              size: 26,
            ),
          ),
        ),
      ],
    );
  }
}
