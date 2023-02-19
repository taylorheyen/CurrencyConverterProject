//
//  ViewController.swift
//  MyCurrencyConverter
//
//  Created by Taylor Heyen on 2/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    var canadianSwitch = true
    var pesoSwitch = true
    var poundSwitch = true
    var euroSwitch = true
    var canadianAmount: Double = 0.0
    var pesoAmount: Double = 0.0
    var poundAmount: Double = 0.0
    var euroAmount: Double = 0.0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var amountTextField: UITextField!
    
    
   
    @IBAction func canadian(_ sender: UISwitch) {
        if sender.isOn {
            canadianSwitch = true
        } else {
            canadianSwitch = false
        }
    }
    
    @IBAction func mexicanPeso(_ sender: UISwitch) {
        if sender.isOn {
            pesoSwitch = true
        } else {
            pesoSwitch = false
        }
    }
    
    @IBAction func britishPound(_ sender: UISwitch) {
        if sender.isOn {
            poundSwitch = true
        } else {
            poundSwitch = false
        }
    }
    
    @IBAction func euro(_ sender: UISwitch) {
        if sender.isOn {
            euroSwitch = true
        } else {
            euroSwitch = false
        }
    }
    
    @IBAction func calculateCurrency(_ sender: UIButton) {
        guard let dollarAmount = Double(amountTextField.text ?? "") else {
            warningLabel.text = "Integer values only!"
            return
           }
        
        warningLabel.text = "Currency Converter"
        
        canadianAmount = 0.0
        pesoAmount = 0.0
        poundAmount = 0.0
        euroAmount = 0.0
        
        if canadianSwitch {
            canadianAmount = dollarAmount * 1.35
        }
        if pesoSwitch {
            pesoAmount = dollarAmount * 18.36
        }
        if poundSwitch {
            poundAmount = dollarAmount * 0.83
        }
        if euroSwitch {
            euroAmount = dollarAmount * 0.93
        }
        
//        self.performSegue(withIdentifier: "toConvertedView", sender: self)
        self.performSegue(withIdentifier: "toConvertedView", sender: dollarAmount)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        if segue.identifier == "toConvertedView" {
            let navigation = segue.destination as! ConvertedView
            if let dollarAmount = sender as? Double {
                navigation.dollarAmount = dollarAmount }
            navigation.canadianAmount = canadianAmount
            navigation.pesoAmount = pesoAmount
            navigation.poundAmount = poundAmount
            navigation.euroAmount = euroAmount
        }
    }
    
    
}

