//
//  ViewController.swift
//  Campus Connection
//
//
//

import UIKit
import Alamofire

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
    
    //MARK: Actions
    @IBAction func loginButton(_ sender: UIButton) {
        
        if(AppUtils().noEmptyInputs(caller: self, fields: [emailLoginInput, passwordLoginInput])){
            if(!AppUtils().isValidEmail(caller:self, field: emailLoginInput)){
                AppUtils().alertOnError(message: "Invalid Email", ViewController: self, toFocus:emailLoginInput)
            }
            attemptLogin()
        }
    }
    
    func attemptLogin() {
        
        let request = [
            "email": emailLoginInput.text,
            "password": passwordLoginInput.text
        ]
            
        Alamofire.request(AppUtils().baseUrl + "login",
                          method: .post, parameters: request, encoding: JSONEncoding.default).responseJSON { response in
            if let res = response.result.value {
                let data = res as! [String: Any]
                let error = data["error"] as! Bool
                if (!error){
                    
                }
                else{
                    let message = data["message"] as! String
                    AppUtils().alertOnResponse(message: message, ViewController: self)
                }
            }
        }
        
    }
}

