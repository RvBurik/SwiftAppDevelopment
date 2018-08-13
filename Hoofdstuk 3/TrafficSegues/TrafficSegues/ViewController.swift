//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Ricardo van Burik on 13-08-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
        
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any){
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any){
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

