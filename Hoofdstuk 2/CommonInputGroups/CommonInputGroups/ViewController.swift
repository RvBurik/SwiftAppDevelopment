//
//  ViewController.swift
//  CommonInputGroups
//
//  Created by Ricardo van Burik on 02-08-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        print("The toggle is \(toggle.isOn)")
        
        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        print(sender.location(in: view))
    }

    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

