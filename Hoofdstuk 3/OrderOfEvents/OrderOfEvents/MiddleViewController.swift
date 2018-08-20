//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Ricardo van Burik on 20-08-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        setText("ViewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        setText("ViewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        setText("ViewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
        setText("ViewDidDisappear")
    }
    
    func setText(_ event: String) -> Void {
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number \(eventNumber) was \(event)"
            eventNumber += 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
