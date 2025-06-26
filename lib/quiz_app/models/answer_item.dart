// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, must_be_immutable


import 'package:flutter/material.dart';
import 'package:flutter_basics/quiz_app/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answer;
  final bool isAnswerChosen;
  final VoidCallback questionIndexChangeCallback;
  const AnswerItem(
    {
      super.key,
      required this.answer,
      required this.isAnswerChosen,
      required this.questionIndexChangeCallback,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
          width: double.infinity,
          height: 60,
          child: InkWell(
            onTap: () {
              answer.onPressed();
              questionIndexChangeCallback();
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26,
                ),
                color: isAnswerChosen ? Colors.green : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: isAnswerChosen ? Colors.white : Colors.black,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      answer.title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: isAnswerChosen ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          // child: ElevatedButton(
          //   onPressed: () {
          //     answer.onPressed();
          //     questionIndexChangeCallback();
          //   },
          //   child: Text(
          //     answer.title,
          //     style: const TextStyle(
          //       color: Colors.white,
          //       fontSize: 17,
          //     ),
          //   ),
          //   style: const ButtonStyle(
          //     backgroundColor: WidgetStatePropertyAll(Colors.blue),
          //   ),
          // ),
          ),
    );
  }
}
