//
//  ViewController.swift
//  Quiz
//
//  Created by mohit kotie on 04/01/18.
//  Copyright © 2018 mohit kotie mohit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextQuestion: UILabel!
    @IBOutlet weak var showAnswer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }
    let questions: [String] = [
      "WHAT IS MY NAME?",
      "WHERE DO I LIVE?",
      "WHAT IS MY FAV SPORT"
    ]
    
    let answers: [String] = [
     "GAURAV PANDEY",
     "LUCKNOW",
     "FOOTBALL"
    ]
    
    var currentQuestionIndex: Int = 0

    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        nextQuestion.text = question
        showAnswer.text = "????"
    }
    
    
    @IBAction func showAnswerButton(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        showAnswer.text = answer
    }
}

