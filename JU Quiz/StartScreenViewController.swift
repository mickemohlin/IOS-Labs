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
    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var hockeyButton: UIButton!
    
    var chosenDifficulty: String = "nothing"
    var chosenCategory: String = "nothing"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        startGameButton.layer.cornerRadius = 5
        aboutButton.layer.cornerRadius = 5
        easyButton.layer.cornerRadius = 5
        mediumButton.layer.cornerRadius = 5
        hardButton.layer.cornerRadius = 5
        foodButton.layer.cornerRadius = 5
        hockeyButton.layer.cornerRadius = 5
    }
    
    
    @IBAction func difficultySelection(_ sender: UIButton) {
        
        if sender.tag == 1 {
            easyButton.backgroundColor = .purple
            mediumButton.backgroundColor = .systemYellow
            hardButton.backgroundColor = .systemRed
            
            chosenDifficulty = "Easy"
        }
        
        else if sender.tag == 2 {
            easyButton.backgroundColor = .systemGreen
            mediumButton.backgroundColor = .purple
            hardButton.backgroundColor = .systemRed
            
            chosenDifficulty = "Medium"
        }
        
        else if sender.tag == 3 {
            easyButton.backgroundColor = .systemGreen
            mediumButton.backgroundColor = .systemYellow
            hardButton.backgroundColor = .purple
            
            chosenDifficulty = "Hard"
        }
    }
    
    
    
    @IBAction func categorySelection(_ sender: UIButton) {
         
        if sender.tag == 1 {
            foodButton.backgroundColor = .purple
            hockeyButton.backgroundColor = .systemTeal
            
            chosenCategory = "Food"
        }
        
        else if sender.tag == 2 {
            foodButton.backgroundColor = .systemTeal
            hockeyButton.backgroundColor = .purple
            
            chosenCategory = "Food"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionViewController = segue.destination as? QuestionViewController {
            let question1 = Question(category: "Food", type: .multiple, difficulty: .easy, question: "What is my favorite drink?", correctAnswer: "Redbull Vodka", incorrectAnswers: ["Water", "Milk", "Coca Cola"])
            
            let question2 = Question(category: "Food", type: .multiple, difficulty: .hard, question: "What is my favorite dish?", correctAnswer: "Hamburger", incorrectAnswers: ["Pasta Carbonara", "Pizza", "Steak"])
            
            let question3 = Question(category: "Hockey", type: .multiple, difficulty: .medium, question: "Which team won the Stanley Cup 2020?", correctAnswer: "Tampa Bay Lightning", incorrectAnswers: ["New York Rangers", "Minnesota Wild", "Vegas Golden Knights"])
            
            let question4 = Question(category: "Food", type: .multiple, difficulty: .medium, question: "What is the best burger place?", correctAnswer: "Jureskogs", incorrectAnswers: ["McDonalds", "Burger King", "Max"])
            
            let question5 = Question(category: "Hockey", type: .multiple, difficulty: .easy, question: "What year did Sweden win the olympics?", correctAnswer: "2006", incorrectAnswers: ["2002", "2010", "2014"])
            
            let question6 = Question(category: "Hockey", type: .multiple, difficulty: .hard, question: "How many points did Nikita Kucherov get in the regular season: 2018-2019?", correctAnswer: "127 points", incorrectAnswers: ["110 points", "95 points", "133 points"])
            
            let questions = [question1, question2, question3, question4, question5, question6]
            //var selectedQuestions = [Question]()
            
            //TODO: Add questions according to the player choice.
            
           
            questionViewController.numberOfQuestions = questions.count
            questionViewController.questions = questions
        }
    }
    

}
