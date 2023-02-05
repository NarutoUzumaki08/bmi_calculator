import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({super.key, required this.onPress, required this.buttonTitle});

  final Function() onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}