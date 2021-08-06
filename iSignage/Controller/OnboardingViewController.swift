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
        performSegue(withIdentifier: "OnboardingToSign", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let signvc = segue.destination as! SignViewController
        signvc.view.backgroundColor = (sender as? UIButton)?.currentTitleColor
    }
}

