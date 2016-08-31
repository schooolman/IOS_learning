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
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField) {
        celsiusLabel.text = textField.text
    }
}