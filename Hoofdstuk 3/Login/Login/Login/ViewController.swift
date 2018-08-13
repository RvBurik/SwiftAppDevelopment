//
//  ViewController.swift
//  Login
//
//  Created by Ricardo van Burik on 13-08-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUsernameButton {
            segue.destination.title = "Forgot Username"
        }
        else if sender == forgotPasswordButton {
            segue.destination.title = "Forgot Password"
        }
        else {
              segue.destination.title = "Welcome \(usernameTextField.text ?? "user")"
        }
    }

    
    @IBAction func pressedLoginButton(_ sender: UIButton){
        performSegue(withIdentifier: "loginView", sender: loginButton)
    }
    
    @IBAction func pressedForgotUsernameButton(_ sender: UIButton){
        performSegue(withIdentifier: "loginView", sender: forgotUsernameButton)
    }
    
    @IBAction func pressedForgotPasswordButton(_ sender: UIButton){
        performSegue(withIdentifier: "loginView", sender: forgotPasswordButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

