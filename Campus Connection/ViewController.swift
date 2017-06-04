//
//  ViewController.swift
//  Campus Connection
//
//
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var emailLoginInput: UITextField!
    @IBOutlet weak var passwordLoginInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLoginInput.delegate = self;
        passwordLoginInput.delegate = self;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == passwordLoginInput {
            attemptLogin()
        }
    }
    
    //MARK: Actions
    @IBAction func signupButton(_ sender: UIButton) {
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        attemptLogin()
    }
    
    func attemptLogin() {
        
    }
}

