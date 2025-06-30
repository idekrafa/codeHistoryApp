//
//  Question.swift
//  codeHistoryApp
//
//  Created by Rafael Ribeiro on 5/19/25.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What data structure uses the LIFO (Last-In, First-Out) principle?",
                 possibleAnswers: [
                    "Queue",
                    "Stack",
                    "Array",
                    "Linked List"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "In Java, which keyword is used to inherit a class?",
                 possibleAnswers: [
                    "Extends",
                    "Implements",
                    "Inherits",
                    "Super"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which of the following is NOT a primitive data type in JavaScript?",
                 possibleAnswers: [
                    "String",
                    "Number",
                    "Boolean",
                    "Array"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What will the following SQL query return? SELECT COUNT(*) FROM Customers;",
                 possibleAnswers: [
                    "The details of all customers",
                    "The total number of customers",
                    "The name of the first customer",
                    "Nothing, it's an invalid query"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Which of the following is the correct way to declare a constant variable in JavaScript?",
                 possibleAnswers: [
                    "var PI = 3.14",
                    "let PI = 3.14",
                    "const PI = 3.14",
                    "constant PI = 3.14"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "In HTML, which tag is used to define the largest heading?",
                 possibleAnswers: [
                    "<h1>",
                    "<heading>",
                    "<h6>",
                    "<head>"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "In C#, which operator is used to get the type of an object at runtime?",
                 possibleAnswers: [
                    "typeof",
                    "gettype",
                    "is",
                    "type"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What does the === operator in JavaScript check for?",
                 possibleAnswers: [
                    "Value equality only",
                    "Value and type equality",
                    "Reference equality only",
                    "Type equality only"
                 ],
                 correctAnswerIndex: 1),
    ]
}
