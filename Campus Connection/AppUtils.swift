//
//  AppUtils.swift
//  Campus Connection
//
//  Created by Amanda on 6/7/17.
//
//

import Foundation
import UIKit

class AppUtils {
    
    let baseUrl = "http://24.4.63.249:8080/CCService/v1/index.php/";
    
    
    func isValidEmail (caller: UIViewController, field: UITextField) ->Bool {
        if let valEmail = field.text, valEmail.hasSuffix(".edu"), valEmail.contains("@"){
            return true;
        }
        return false;
    }
    
    
    func noEmptyInputs(caller: UIViewController, fields: [UITextField]) -> Bool {
        var noErrors = true
        var message = ""
        
        for field in fields {
            if let text = field.text, text.isEmpty {
                noErrors = false
                message += "Field required"
                alertOnError(message: message, ViewController: caller, toFocus: field)
            }
  
        }
        return noErrors
    }
    
    func alertOnError(message: String, ViewController: UIViewController, toFocus:UITextField) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel,handler: {_ in
            toFocus.becomeFirstResponder()
        });
        alert.addAction(action)
        ViewController.present(alert, animated: true, completion:nil)
    }
    
    func alertOnResponse(message: String, ViewController: UIViewController) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel,handler: {_ in
            
        });
        alert.addAction(action)
        ViewController.present(alert, animated: true, completion:nil)
    }
    
}
