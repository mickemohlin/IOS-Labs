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
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var highScoreButton: UIButton!
    
    
    var chosenDifficulty: String = "easy" //Default value
    var chosenNumberOfRounds: Int = 3 //Default value
    

    override func viewDidLoad() {
        super.viewDidLoad()

        startGameButton.layer.cornerRadius = 5
        aboutButton.layer.cornerRadius = 5
        easyButton.layer.cornerRadius = 5
        mediumButton.layer.cornerRadius = 5
        hardButton.layer.cornerRadius = 5
        twoButton.layer.cornerRadius = 5
        fourButton.layer.cornerRadius = 5
        sixButton.layer.cornerRadius = 5
        highScoreButton.layer.cornerRadius = 5
    }
    
    
    @IBAction func difficultySelection(_ sender: UIButton) {
        
        if sender.tag == 1 {
            easyButton.backgroundColor = .purple
            mediumButton.backgroundColor = .systemYellow
            hardButton.backgroundColor = .systemRed
            
            chosenDifficulty = "easy"
        }
        
        else if sender.tag == 2 {
            easyButton.backgroundColor = .systemGreen
            mediumButton.backgroundColor = .purple
            hardButton.backgroundColor = .systemRed
            
            chosenDifficulty = "medium"
        }
        
        else if sender.tag == 3 {
            easyButton.backgroundColor = .systemGreen
            mediumButton.backgroundColor = .systemYellow
            hardButton.backgroundColor = .purple
            
            chosenDifficulty = "hard"
        }
    }
    
    
    
    @IBAction func roundSelection(_ sender: UIButton) {
        
        if sender.tag == 1 {
            twoButton.backgroundColor = .purple
            fourButton.backgroundColor = .systemTeal
            sixButton.backgroundColor = .systemTeal
            
            chosenNumberOfRounds = 1
        }
        
        else if sender.tag == 2 {
            twoButton.backgroundColor = .systemTeal
            fourButton.backgroundColor = .purple
            sixButton.backgroundColor = .systemTeal
            
            chosenNumberOfRounds = 2
        }
        
        else if sender.tag == 3 {
            twoButton.backgroundColor = .systemTeal
            fourButton.backgroundColor = .systemTeal
            sixButton.backgroundColor = .purple
            
            chosenNumberOfRounds = 3

        }
    }
    
    
    
    @IBAction func highscoreButtonHandler(_ sender: Any) {
        let highscoreTableViewController = HighscoreTableViewController()
        navigationController?.pushViewController(highscoreTableViewController, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let questionViewController = segue.destination as? QuestionViewController {
            let question1 = Question(category: "Food", type: .multiple, difficulty: .easy, question: "What is my favorite drink?", correctAnswer: "Redbull Vodka", incorrectAnswers: ["Water", "Milk", "Coca Cola"])
            
            let question2 = Question(category: "Food", type: .multiple, difficulty: .easy, question: "What is my favorite dish?", correctAnswer: "Hamburger", incorrectAnswers: ["Pasta Carbonara", "Pizza", "Steak"])
            
            let question3 = Question(category: "Hockey", type: .multiple, difficulty: .easy, question: "Which team won the Stanley Cup 2020?", correctAnswer: "Tampa Bay Lightning", incorrectAnswers: ["New York Rangers", "Minnesota Wild", "Vegas Golden Knights"])
            
            let question4 = Question(category: "Food", type: .multiple, difficulty: .medium, question: "What is the best burger place?", correctAnswer: "Jureskogs", incorrectAnswers: ["McDonalds", "Burger King", "Max"])
            
            let question5 = Question(category: "Hockey", type: .multiple, difficulty: .medium, question: "What year did Sweden win the olympics?", correctAnswer: "2006", incorrectAnswers: ["2002", "2010", "2014"])
            
            let question6 = Question(category: "Hockey", type: .multiple, difficulty: .medium, question: "How many points did Nikita Kucherov get in the regular season: 2018-2019?", correctAnswer: "127 points", incorrectAnswers: ["110 points", "95 points", "133 points"])
            
            let question7 = Question(category: "Hockey", type: .multiple, difficulty: .hard, question: "How many points does Wayne Gretzky have in toal?", correctAnswer: "2857", incorrectAnswers: ["2410", "2611", "2021"])
            
            let question8 = Question(category: "Food", type: .multiple, difficulty: .hard, question: "What is my favorite snack?", correctAnswer: "Nachos", incorrectAnswers: ["Candy", "Cookies", "Fruit"])
            
            let question9 = Question(category: "Hockey", type: .multiple, difficulty: .hard, question: "Which is the best hockey team in the world?", correctAnswer: "Linköpings Hockey Club", incorrectAnswers: ["Chicago Blackhawks", "HV71", "New York Rangers"])
            
            
            let questions = [question1, question2, question3, question4, question5, question6, question7, question8, question9]
            var selectedQuestions = [Question]()
            
            var countQuestions = 0
            
            for eachQuestion in questions {
                
                if countQuestions == chosenNumberOfRounds {
                    break
                }
                
                if eachQuestion.difficulty.rawValue == chosenDifficulty {
                    selectedQuestions.append(eachQuestion)
                    countQuestions += 1
                }
            }
            
            questionViewController.numberOfQuestions = selectedQuestions.count
            questionViewController.questions = selectedQuestions
        }
    }
    

}
