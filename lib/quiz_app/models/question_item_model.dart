// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_basics/quiz_app/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> availableAnswers;
  QuestionItemModel({required this.title, required this.availableAnswers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: 'What is your favorite sport ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Football',
        onPressed: () => debugPrint("Football Choice"),
      ),
      AnswerItemModel(
        title: 'Basketball',
        onPressed: () => debugPrint("Basketball Choice"),
      ),
      AnswerItemModel(
        title: 'Volleyball',
        onPressed: () => debugPrint("Volleyball Choice"),
      ),
      AnswerItemModel(
        title: 'Kickboxing',
        onPressed: () => debugPrint("Kickboxing Choice"),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favorite color ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Red',
        onPressed: () => debugPrint("Red Choice"),
      ),
      AnswerItemModel(
        title: 'Blue',
        onPressed: () => debugPrint("Blue Choice"),
      ),
      AnswerItemModel(
        title: 'Green',
        onPressed: () => debugPrint("Green Choice"),
      ),
      AnswerItemModel(
        title: 'Pink',
        onPressed: () => debugPrint("Pink Choice"),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favorite animal ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Whale',
        onPressed: () => debugPrint("Whale Choice"),
      ),
      AnswerItemModel(
        title: 'Monkey',
        onPressed: () => debugPrint("Monkey Choice"),
      ),
      AnswerItemModel(
        title: 'Cat',
        onPressed: () => debugPrint("Cat Choice"),
      ),
      AnswerItemModel(
        title: 'Dolphin',
        onPressed: () => debugPrint("Dolphin Choice"),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favorite channel ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Soliman Nightmares',
        onPressed: () => debugPrint("Soliman Nightmares Choice"),
      ),
      AnswerItemModel(
        title: 'Abo Flah',
        onPressed: () => debugPrint("Abo Flah Choice"),
      ),
      AnswerItemModel(
        title: 'Ahmed Alshammari',
        onPressed: () => debugPrint("Ahmed Alshammari Choice"),
      ),
      AnswerItemModel(
        title: '1st Step Gaming',
        onPressed: () => debugPrint("1st Step Gaming Choice"),
      ),
    ],
  ),
];
