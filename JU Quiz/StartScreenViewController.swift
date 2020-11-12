//
//  StartScreenViewController.swift
//  JU Quiz
//
//  Created by Mikael Mohlin on 2020-11-05.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var aboutButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        startGameButton.layer.cornerRadius = 5
        aboutButton.layer.cornerRadius = 5
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionViewController = segue.destination as? QuestionViewController {
            let question1 = Question(category: "Drinks", type: .multiple, difficulty: .easy, question: "What is my favorite drink?", correctAnswer: "Redbull Vodka", incorrectAnswers: ["Water", "Milk", "Coca Cola"])
            
            let question2 = Question(category: "Food", type: .multiple, difficulty: .hard, question: "What is my favorite dish?", correctAnswer: "Hamburger", incorrectAnswers: ["Pasta Carbonara", "Pizza", "Steak"])
            
            let question3 = Question(category: "Hockey", type: .multiple, difficulty: .medium, question: "Which team won Stanley Cup 2020?", correctAnswer: "Tampa Bay Lightning", incorrectAnswers: ["New York Rangers", "Minnesota Wild", "Vegas Golden Knights"])
            
            let questions = [question1, question2, question3]
            questionViewController.numberOfQuestions = questions.count
            questionViewController.questions = questions
        }
    }
    

}
