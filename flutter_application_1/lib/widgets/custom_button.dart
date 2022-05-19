import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String Texto;
  const CustomButton({
    Key? key, required this.Texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
                child: Text( Texto,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )))));
  }
}
