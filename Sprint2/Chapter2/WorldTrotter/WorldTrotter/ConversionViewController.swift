//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Jacob Schoolmeesters on 8/30/16.
//  Copyright © 2016 Jacob Schoolmeesters. All rights reserved.
//

//import Foundation
import UIKit

class ConversionViewController: UIViewController {
    
    
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField) {
//        celsiusLabel.text = textField.text
        if let text = textField.text where !text.isEmpty {
            celsiusLabel.text = text
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
}