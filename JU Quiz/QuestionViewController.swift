//
//  QuestionViewController.swift
//  JU Quiz
//
//  Created by Mikael Mohlin on 2020-10-29.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var answerButtonA: UIButton!
    @IBOutlet weak var answerButtonB: UIButton!
    @IBOutlet weak var answerButtonC: UIButton!
    @IBOutlet weak var answerButtonD: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerButtonAHandler(_ sender: Any) {
        print("Redbull Vodka")
        
        answerButtonA.backgroundColor = .red
        
        let alertController = UIAlertController(title: "Wrong Answer", message: "Try another answer", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (_) in alertController.dismiss(animated: true, completion: nil)}))
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func answerButtonBHandler(_ sender: Any) {
        print("Rom & Cola")
        
        let alertController = UIAlertController(title: "Wrong Answer", message: "Try another answer", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (_) in alertController.dismiss(animated: true, completion: nil)}))
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func answerButtonCHandler(_ sender: Any) {
        print("Mojito")
        
        let alertController = UIAlertController(title: "Wrong Answer", message: "Try another answer", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (_) in alertController.dismiss(animated: true, completion: nil)}))
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func answerButtonDHandler(_ sender: Any) {
        print("Pina Colada")
        
        let alertController = UIAlertController(title: "Correct Answer", message: "You have answered correct!", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Yeee boiii", style: UIAlertAction.Style.default, handler: { (_) in alertController.dismiss(animated: true, completion: nil)}))
        
        present(alertController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
