//
//  ViewController.swift
//  DaiKadai2
//
//  Created by 千原大作 on 2023/04/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func button(_ sender: UISegmentedControl) {
        let num1: Double = Double(number1TextField.text!) ?? 0
        let num2: Double = Double(number2TextField.text!) ?? 0

        switch segmentControl.selectedSegmentIndex {
        case 0:
            resultLabel.text = String(num1 + num2)
        case 1:
            resultLabel.text = String(num1 - num2)
        case 2:
            resultLabel.text = String(num1 * num2)
        case 3:
            if num2 == 0 {
                resultLabel.text = "割る数には0以外を入力して下さい"
            } else {
                resultLabel.text = String(num1 / num2)
            }
        default: break
        }
    }
}
