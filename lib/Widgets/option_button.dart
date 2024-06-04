import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({super.key, required this.option, required this.onTap});

  final String option;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF280A56),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15)),
        onPressed: onTap,
        child: Text(
          option,
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
