import 'package:flutter/material.dart';

void startQuiz() {
  // Start the quiz logic here
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 103, 78, 141)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 280,
                ),
                const SizedBox(height: 80),
                const Text(
                  'Learn Flutter The Fun Way!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: startQuiz,
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    textStyle: const TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ),
                  child: const Text('Start Quiz'),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
