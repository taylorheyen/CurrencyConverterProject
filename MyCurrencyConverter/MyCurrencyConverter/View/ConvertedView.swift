//
//  ConvertedView.swift
//  MyCurrencyConverter
//
//  Created by Taylor Heyen on 2/18/23.
//

import UIKit

class ConvertedView: UIViewController {

    @IBOutlet weak var dollarAmountLabel: UILabel!
    
    
    var dollarAmount: Double = 0.0
    
    @IBOutlet weak var canadianLabel: UILabel!
    
    var canadianAmount: Double = 0.0
    
    @IBOutlet weak var pesoLabel: UILabel!
    var pesoAmount: Double = 0.0
    
    @IBOutlet weak var poundLabel: UILabel!
    var poundAmount: Double = 0.0
    
    @IBOutlet weak var euroLabel: UILabel!
    var euroAmount: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dollarAmountLabel.text = String(format: "USD: %.2f", dollarAmount)
        canadianLabel.text = String(format: "%.2f", canadianAmount)
        pesoLabel.text = String(format: "%.2f", pesoAmount)
        poundLabel.text = String(format: "%.2f", poundAmount)
        euroLabel.text = String(format: "%.2f", euroAmount)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
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
