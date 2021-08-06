//
//  OnboardingViewController.swift
//  iSignage
//
//  Created by Jada White on 8/5/21.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var chillinButton: UIButton!
    @IBOutlet weak var sleepingButton: UIButton!
    @IBOutlet weak var workingButton: UIButton!
    @IBOutlet weak var streamingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // When the status button is pressed, segue to the next view with text and color
    @IBAction func statusButtonPressed(_ sender: UIButton) {
        let signvc = SignViewController()
        signvc.view.backgroundColor = sender.currentTitleColor
        performSegue(withIdentifier: "OnboardingToSign", sender: sender)
    }
}

