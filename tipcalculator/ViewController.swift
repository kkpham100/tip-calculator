//
//  ViewController.swift
//  tipcalculator
//
//  Created by Khanh Pham on 9/12/21.
//  Copyright © 2021 Kayden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //calculate tip
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //calculate total
        let total = bill + tip
        
        //display tip
        tipAmountLabel.text = String(format: "$%.02f", tip)
        
        //display total
        totalLabel.text = String(format: "$%.02f", total)
        
        
    }
    

}

