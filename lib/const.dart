import 'package:flutter/material.dart';
import 'package:quiz_app/question_answer_model.dart';

const backgroundColor = Color.fromRGBO(47, 28, 2, 1);
const foregroundColor = Color.fromRGBO(245, 140, 1, 1);

List<QuestionAnswerModel> quizQuestions = [
  QuestionAnswerModel(
      question: "Name the shape with three sides?",
      correctAnswer: "Triangle",
      options: ["Triangle", "Square", "Rectangle", "Pentagon"]),
  QuestionAnswerModel(
      question: "What is the smallest two digit number?",
      correctAnswer: "10",
      options: ["01", "10", "00", "11"]),
  QuestionAnswerModel(
      question: "Which shape has no sides and corners?",
      correctAnswer: "Circle",
      options: ["Square", "Rectangle", "Circle", "Diamond"]),
  QuestionAnswerModel(
      question: "Which shape has all four of its sides equal?",
      correctAnswer: "Square",
      options: ["Square", "Rectangle", "Circle", "Triangle"]),
  QuestionAnswerModel(
      question: "What is the largest two digit number?",
      correctAnswer: "99",
      options: ["99", "10", "100", "98"]),
  QuestionAnswerModel(
      question: "What is the smallest even number?",
      correctAnswer: "2",
      options: ["1", "2", "0", "10"]),
  QuestionAnswerModel(
      question: "What is the place value of 4 in 654?",
      correctAnswer: "Ones",
      options: ["Tens", "Hundreds", "Ones", "Fours"]),
  QuestionAnswerModel(
      question: "4 times 8 equals ___________.",
      correctAnswer: "32",
      options: ["12", "23", "21", "32"]),
  QuestionAnswerModel(
      question: "40+20 equals to ____________.",
      correctAnswer: "60",
      options: ["70", "50", "80", "60"]),
  QuestionAnswerModel(
      question: "An adult human has _________ teeth.",
      correctAnswer: "32",
      options: ["32", "23", "52", "30"]),
];
