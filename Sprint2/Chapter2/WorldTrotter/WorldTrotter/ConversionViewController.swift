//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Jacob Schoolmeesters on 8/30/16.
//  Copyright © 2016 Jacob Schoolmeesters. All rights reserved.
//

//import Foundation
import UIKit



class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField) {
//        celsiusLabel.text = textField.text
//        if let text = textField.text where !text.isEmpty {
//            celsiusLabel.text = text
//        }
//        else {
//            celsiusLabel.text = "???"
//        }
        
        if let text = textField.text, value = Double(text) {
            fahrenheitValue = value
        }
        else {
            fahrenheitValue = nil
        }
        
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
//            celsiusLabel.text = "\(value)"
            celsiusLabel.text = numberFormatter.stringFromNumber(value)
        } else {
            celsiusLabel.text = "???"
        }
        
        
    }
    
    func textField(textField: UITextField,
                   shouldChangeCharactersInRange range: NSRange,
                                                 replacementString string: String) -> Bool {
//        print("Current text: \(textField.text)")
//        print("replacement text: \(string)")
        
        //        return true
        
        let existingTextHasDecimalSeparator = textField.text?.rangeOfString(".")
        let replacementTextHasDecimalSeparator = string.rangeOfString(".")
        
        if existingTextHasDecimalSeparator != nil &&
            replacementTextHasDecimalSeparator != nil {
            return false
        }
        else {
            return true
        }
        
        

    }
    
   

    
}