//
//  ViewController.swift
//  Tip Calculator Prework
//
//  Created by Rahqi T. Sarsour on 8/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var billAmtText: UITextField!
    

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmtText.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = bill+tip
        
        tipAmt.text = String(format: "$%.2f", tip)
        totalAmt.text = String(format: "$%.2f", total)
        
        
    }
    
}

