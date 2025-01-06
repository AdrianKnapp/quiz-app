import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final currentIndex = data['question_index'] as int;
            final isCorrect = data['is_correct'] as bool;

            print(isCorrect);

            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: isCorrect
                            ? const Color.fromARGB(89, 102, 223, 142)
                            : const Color.fromARGB(81, 238, 87, 87),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          (currentIndex + 1).toString(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'].toString(),
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            data['user_answer'].toString(),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 99, 99, 99),
                            ),
                          ),
                          Text(
                            data['correct_answer'].toString(),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 40, 155, 79),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
