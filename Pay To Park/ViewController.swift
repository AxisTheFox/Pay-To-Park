//
//  ViewController.swift
//  Pay To Park
//
//  Created by Fox, Braydon on 9/14/16.
//  Copyright © 2016 Fox, Braydon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var hoursParked: UITextField!
    @IBOutlet weak var totalCharge: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        hoursParked.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        hoursParked.resignFirstResponder()
        return true
    }
    
    
    // MARK: Actions
    @IBAction func calculateButton(sender: UIButton) {
        
    }
    @IBAction func resetButton(sender: UIButton) {
        totalCharge.text = "$0"
        hoursParked.text = ""
    }
    
}