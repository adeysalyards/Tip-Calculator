//
//  ViewController.swift
//  Tips_v2
//
//  Created by Salyards, Adey on 9/18/15.
//  Copyright (c) 2015 Salyards, Adey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var myColor : UIColor = UIColor(red:255, green:255, blue:255, alpha: 0.4)
    @IBOutlet weak var secondColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        billField.layer.borderColor = myColor.CGColor
        billField.layer.cornerRadius = 8.0
        billField.layer.borderWidth = 1.0
        self.view.backgroundColor = UIColor(red: 52/255.0, green: 152/255.0, blue: 219/255.0, alpha: 1.0)
        secondColorView.backgroundColor = UIColor(red:41/255.0, green: 128/255.0, blue: 185/255.0, alpha:1.0)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        switch tipControl.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor(red: 241/255.0, green: 196/255.0, blue: 15/255.0, alpha: 1.0)
            secondColorView.backgroundColor = UIColor(red:243/255.0, green: 156/255.0, blue: 18/255.0, alpha:1.0)
        case 1:
            self.view.backgroundColor = UIColor(red: 52/255.0, green: 152/255.0, blue: 219/255.0, alpha: 1.0)
            secondColorView.backgroundColor = UIColor(red:41/255.0, green: 128/255.0, blue: 185/255.0, alpha:1.0)
        case 2:
            self.view.backgroundColor = UIColor(red: 168/255.0, green: 89/255.0, blue: 182/255.0, alpha: 1.0)
            secondColorView.backgroundColor = UIColor(red:142/255.0, green: 75/255.0, blue: 154/255.0, alpha:1.0)
        default:
            self.view.backgroundColor = UIColor(red: 243/255.0, green: 156/255.0, blue: 18/255.0, alpha: 1.0)
        }
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
}

