//
//  QuestionViewController.swift
//  JU Quiz
//
//  Created by Mikael Mohlin on 2020-10-29.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButtonA: UIButton!
    @IBOutlet weak var answerButtonB: UIButton!
    @IBOutlet weak var answerButtonC: UIButton!
    @IBOutlet weak var answerButtonD: UIButton!
    
    private var haveWon = false
    var question: Question?
    var questions: [Question] = [] {
        didSet {
            question = questions.removeFirst()
        }
    }
    
    var numberOfQuestions = 0
    var numberOfRightAnswers = 0
    //var gameDifficulty: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.clipsToBounds = true
        questionLabel.layer.cornerRadius = 20
        
        var buttons = [answerButtonA, answerButtonB, answerButtonC, answerButtonD]
        buttons.forEach { (button) in
            button?.layer.cornerRadius = 20
        }
        
        questionLabel.text = question?.question
        buttons.shuffle()
        let correctButton = buttons.removeFirst()
        correctButton?.setTitle(question?.correctAnswer, for: .normal)
        
        question?.incorrectAnswers.forEach( { (answer) in
            let button = buttons.removeFirst()
            button?.setTitle(answer, for: .normal)
        })
    }
    
    @IBAction func answerButtonAHandler(_ sender: Any) {
        if answerButtonA.title(for: .normal) == question?.correctAnswer {
            showRightAnswerAlert(button: answerButtonA)
        } else {
            showWrongAnswerAlert(button: answerButtonA)
        }
    }
    
    
    @IBAction func answerButtonBHandler(_ sender: Any) {
        if answerButtonB.title(for: .normal) == question?.correctAnswer {
            showRightAnswerAlert(button: answerButtonB)
        } else {
            showWrongAnswerAlert(button: answerButtonB)
        }
    }
    
    @IBAction func answerButtonCHandler(_ sender: Any) {
        if answerButtonC.title(for: .normal) == question?.correctAnswer {
            showRightAnswerAlert(button: answerButtonC)
        } else {
            showWrongAnswerAlert(button: answerButtonC)
        }
    }
    
    @IBAction func answerButtonDHandler(_ sender: Any) {
        if answerButtonD.title(for: .normal) == question?.correctAnswer {
            showRightAnswerAlert(button: answerButtonD)
        } else {
            showWrongAnswerAlert(button: answerButtonD)
        }
    }
    
    
    private func showRightAnswerAlert(button: UIButton){
        numberOfRightAnswers += 1
        button.backgroundColor = .green
        
        let alertController = UIAlertController(title: "Correct Answer", message: "Good job!", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Yeee boiii", style: UIAlertAction.Style.default, handler: { [weak self] (_) in
            self?.goToNextScreen()
        }))
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    private func showWrongAnswerAlert(button: UIButton){
        button.backgroundColor = .red
        
        let alertController = UIAlertController(title: "Wrong Answer", message: "Better luck next time.", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { [weak self] (_) in
            self?.goToNextScreen()
        }))
        
        present(alertController, animated: true, completion: nil)
    }
    
    private func goToNextScreen(){
        guard !questions.isEmpty,
            let questionViewController = storyboard?.instantiateViewController(withIdentifier: "QuestionViewController") as? QuestionViewController else {
                performSegue(withIdentifier: "ResultView", sender: nil)
                return
            }
        
        questionViewController.numberOfQuestions = numberOfQuestions
        questionViewController.numberOfRightAnswers = numberOfRightAnswers
        questionViewController.questions = questions
        navigationController?.pushViewController(questionViewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultViewController = segue.destination as? ResultViewController {
            resultViewController.resultView.resultLabel.text = "Out of \(numberOfQuestions) questions you have \(numberOfRightAnswers) right answers."
            resultViewController.resultView.difficultyLabel.text = "Difficulty: "
        }
    }
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    */
}
