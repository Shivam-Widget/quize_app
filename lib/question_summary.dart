import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(
    this.summaryData, {
    super.key,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.cyan
                      ),
                      child: Center(child: Text(((data['question_index'] as int) + 1).toString(), style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),),),
                  SizedBox(width: 30,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String,  style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String,  style: TextStyle(fontSize: 14, color: Colors.purple, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text(data['correct_answer'] as String,  style: TextStyle(fontSize: 14, color: Colors.cyanAccent, fontWeight: FontWeight.bold)),
                        SizedBox(height: 15,)
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
