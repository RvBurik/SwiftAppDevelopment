//
//  ViewController.swift
//  Two Buttons
//
//  Created by Ricardo van Burik on 02-08-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func setTextButtonTapped(_ sender: UIButton){
        outputLabel.text = textfield.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton){
        textfield.text = ""
        outputLabel.text = "" //empty string
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

