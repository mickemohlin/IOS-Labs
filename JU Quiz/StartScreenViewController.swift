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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
