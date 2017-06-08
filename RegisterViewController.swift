//
//  RegisterViewController.swift
//  Campus Connection
//
//  Created by Amanda on 6/7/17.
//
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var emailRegisterInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailRegisterInput.delegate = self;
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
    
    //MARK: Actions
    @IBAction func registerButton(_ sender: UIButton) {

    }
    
    func sendActEmail(){
        
    }
    

}
