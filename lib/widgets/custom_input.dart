import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  const CustomInput({
    Key? key, required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
