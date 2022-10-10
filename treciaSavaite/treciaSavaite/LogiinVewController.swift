//
//  LogiinVewController.swift
//  treciaSavaite
//
//  Created by reromac on 2022-10-03.
//

import UIKit

class LogiinVewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    let correctUsername = "Romas"
    let correctPassword = "12345"

    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        

       
    }
    
    @IBAction func didPressLogin(_ sender: Any) {
        if usernameTextField.text == correctUsername &&
            passwordTextField.text == correctPassword {
            performSegue(withIdentifier: "perejimasIWelcome", sender: nil)
          
        } else {
            print("Not OK")
        }
    }

}
extension LogiinVewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == usernameTextField {
            print("pradedu vesti vartotoja")
        }
        if textField == passwordTextField {
            print("ivedu passworda")
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == passwordTextField {
            return Int(string) != nil || string.isEmpty
        } else {
            return true
        }
    }
}
