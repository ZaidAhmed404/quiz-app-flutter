import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Container(margin: EdgeInsets.only(top: 8,bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
                    child: Text(((data['question_index'] as int) + 1).toString(),style: const TextStyle(color: Colors.white),)),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String,style: const TextStyle(color: Colors.white),),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user_answer'] as String,style: const TextStyle(color: Colors.white),),
                      Text(data['correct_answer'] as String,style: const TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
