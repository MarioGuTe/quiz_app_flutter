import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer_button.dart';
import 'package:quiz_app_flutter/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

void submitAnswer() {
  // TODO: Implement submitting the answer and checking if it's correct
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[
        0]; // Replace 0 with the index of the question you want to display.

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers
              .map((item) => AnswerButton(item, submitAnswer)),
        ],
      ),
    );
  }
}
