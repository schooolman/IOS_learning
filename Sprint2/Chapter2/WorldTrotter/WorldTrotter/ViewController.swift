//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Jacob Schoolmeesters on 8/26/16.
//  Copyright © 2016 Jacob Schoolmeesters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
        let firstView = UIView(frame: firstFrame)
        firstView.backgroundColor = UIColor.blueColor()
        view.addSubview(firstView)
    }

}

