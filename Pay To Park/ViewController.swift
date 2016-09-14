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
    @IBOutlet weak var hoursParkedTextField: UITextField!
    @IBOutlet weak var finalAmountLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        hoursParkedTextField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        hoursParkedTextField.resignFirstResponder()
        return true
    }
    
    
    // MARK: Actions
    @IBAction func calculateButton(sender: UIButton) {
        let hoursParked = Double(hoursParkedTextField.text!)
        var totalCharge = 5.00
        
        if (hoursParked <= 3.00)
        {
            totalCharge = 5.00
        }
        else
        {
            var remainingHours = hoursParked! - 3.00
            while (remainingHours >= 1.00)
            {
                remainingHours -= 1.00
                totalCharge += 1.50
            }
            if (remainingHours > 0.00)
            {
                totalCharge += 1.50
            }
        }
        
        if (totalCharge > 18.00)
        {
            totalCharge = 18.00
        }
        
        let chargeString = String.localizedStringWithFormat("%.2f", totalCharge)
        finalAmountLabel.text = "$\(chargeString)"
    }
    @IBAction func resetButton(sender: UIButton) {
        finalAmountLabel.text = "$0"
        hoursParkedTextField.text = ""
    }
    
}