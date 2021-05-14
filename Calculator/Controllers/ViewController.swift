//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    var isFinishedTypingNumber: Bool = true
    
    //MARK: - Outlets
    @IBOutlet weak var displayLabel: UILabel!
    
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        
    }
    
    //MARK: - Actions
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue =  sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
    
    //MARK: - Helper Functions
    func numberPressed(button: UIButton) {
        
        
    }
    
}//END OF CLASS

