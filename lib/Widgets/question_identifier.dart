import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.data, {super.key});

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data['question']!,
            style: GoogleFonts.mukta(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            data['user_answer']!,
            style: const TextStyle(
              color: Color.fromARGB(255, 239, 138, 255),
            ),
          ),
          Text(
            data['correct_answer']!,
            style: const TextStyle(
              color: Color.fromARGB(255, 138, 226, 255),
            ),
          ),
        ],
      ),
    );
  }
}
