import 'package:flutter/material.dart';
import 'package:quiz_app/Widgets/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: (data['user_answer']! == data['correct_answer']!)
                ? Colors.lightBlue
                : Colors.pinkAccent,
            child: Text((int.parse(data['question_index']!) + 1).toString()),
          ),
          const SizedBox(width: 20),
          QuestionIdentifier(data),
        ],
      ),
    );
  }
}
