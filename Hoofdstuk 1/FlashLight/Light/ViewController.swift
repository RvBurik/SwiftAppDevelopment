//
//  ViewController.swift
//  Light
//
//  Created by Ricardo van Burik on 26-07-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var lightOn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUILight()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUILight()
    }
    
    func updateUILight(){
        view.backgroundColor = lightOn ? .white : .black
    }
    
}

